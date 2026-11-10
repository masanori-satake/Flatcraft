# Flatcraft local static server for Windows PowerShell 5.1 (no installs needed).
# Started by start.bat. Serves this folder at http://localhost:8765/
# Keep this file ASCII-only: PowerShell 5.1 misreads UTF-8 without BOM.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$port = 8765
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$mime = @{
  '.html'       = 'text/html; charset=utf-8'
  '.js'         = 'text/javascript; charset=utf-8'
  '.css'        = 'text/css; charset=utf-8'
  '.svg'        = 'image/svg+xml'
  '.png'        = 'image/png'
  '.jpg'        = 'image/jpeg'
  '.json'       = 'application/json; charset=utf-8'
  '.webmanifest' = 'application/manifest+json; charset=utf-8'
}
try {
  $listener.Start()
  Write-Host "Flatcraft server running: http://localhost:$port/"
  Write-Host "Close this window to stop."
  while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    try {
      $rel = $ctx.Request.Url.AbsolutePath.TrimStart('/')
      if ([string]::IsNullOrWhiteSpace($rel)) { $rel = 'index.html' }
      $rel = [System.Uri]::UnescapeDataString($rel)
      $path = [System.IO.Path]::GetFullPath((Join-Path $root $rel))
      if (-not $path.StartsWith($root)) {
        $ctx.Response.StatusCode = 403
      } elseif (Test-Path $path -PathType Leaf) {
        $bytes = [System.IO.File]::ReadAllBytes($path)
        $ext = [System.IO.Path]::GetExtension($path).ToLower()
        if ($mime.ContainsKey($ext)) { $ctx.Response.ContentType = $mime[$ext] }
        $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
      } else {
        $ctx.Response.StatusCode = 404
      }
    } catch {
      try { $ctx.Response.StatusCode = 500 } catch {}
    } finally {
      $ctx.Response.Close()
    }
  }
} finally {
  if ($listener.IsListening) { $listener.Stop() }
  $listener.Close()
}

//
//  Mime.swift
//  Mime
//
//  Created by Andreas Pfurtscheller on 07.04.21.
//

import Foundation

public struct Mime: Hashable, Codable {
    
    public let mime: String
    public let ext: String
    public let type: FileType
    
    public init(mime: String, ext: String, type: FileType) {
        self.mime = mime
        self.ext = ext
        self.type = type
    }
    
    public init?(ext: String) {
        guard let mime = Self.mimeTypes[ext.lowercased()] else {
            return nil
        }
        
        self.init(mime: mime.0, ext: ext, type: mime.1)
    }
    
    public init?(url: URL) {
        self.init(ext: url.pathExtension)
    }
    
    static let mimeTypes: [String: (String, FileType)] = [
        "md": ("text/markdown", .md),
        "html": ("text/html", .html),
        "htm": ("text/html", .html),
        "shtml": ("text/html", .html),
        "css": ("text/css", .css),
        "xml": ("text/xml", .xml),
        "gif": ("image/gif", .gif),
        "jpeg": ("image/jpeg", .jpg),
        "jpg": ("image/jpeg", .jpg),
        "js": ("application/javascript", .js),
        "atom": ("application/atom+xml", .atom),
        "rss": ("application/rss+xml", .rss),
        "mml": ("text/mathml", .mml),
        "txt": ("text/plain", .txt),
        "jad": ("text/vnd.sun.j2me.app-descriptor", .jad),
        "wml": ("text/vnd.wap.wml", .wml),
        "htc": ("text/x-component", .htc),
        "png": ("image/png", .png),
        "flif": ("image/flif", .flif),
        "cr2": ("image/x-canon-cr2", .cr2),
        "tif": ("image/tiff", .tif),
        "tiff": ("image/tiff", .tif),
        "wbmp": ("image/vnd.wap.wbmp", .wbmp),
        "ico": ("image/x-icon", .ico),
        "jng": ("image/x-jng", .jng),
        "jxr": ("image/vnd.ms-photo", .jxr),
        "bmp": ("image/x-ms-bmp", .bmp),
        "svg": ("image/svg+xml", .svg),
        "svgz": ("image/svg+xml", .svg),
        "webp": ("image/webp", .webp),
        "psd": ("image/vnd.adobe.photoshop", .psd),
        "woff": ("application/font-woff", .woff),
        "woff2": ("application/font-woff", .woff),
        "jar": ("application/java-archive", .jar),
        "war": ("application/java-archive", .war),
        "ear": ("application/java-archive", .ear),
        "json": ("application/json", .json),
        "hqx": ("application/mac-binhex40", .hqx),
        "doc": ("application/msword", .doc),
        "pdf": ("application/pdf", .pdf),
        "ps": ("application/postscript", .ps),
        "eps": ("application/postscript", .eps),
        "ai": ("application/postscript", .ai),
        "epub": ("application/epub+zip", .epub),
        "rtf": ("application/rtf", .rtf),
        "m3u8": ("application/vnd.apple.mpegurl", .m3u8),
        "xls": ("application/vnd.ms-excel", .xls),
        "eot": ("application/vnd.ms-fontobject", .eot),
        "ttf": ("application/font-sfnt", .ttf),
        "otf": ("application/font-sfnt", .otf),
        "ppt": ("application/vnd.ms-powerpoint", .ppt),
        "wmlc": ("application/vnd.wap.wmlc", .wmlc),
        "kml": ("application/vnd.google-earth.kml+xml", .kml),
        "kmz": ("application/vnd.google-earth.kmz", .kmz),
        "7z": ("application/x-7z-compressed", .sevenZ),
        "cco": ("application/x-cocoa", .cco),
        "jardiff": ("application/x-java-archive-diff", .jardiff),
        "jnlp": ("application/x-java-jnlp-file", .jnlp),
        "run": ("application/x-makeself", .run),
        "pl": ("application/x-perl", .pl),
        "pm": ("application/x-perl", .pm),
        "prc": ("application/x-pilot", .prc),
        "pdb": ("application/x-pilot", .pdb),
        "rar": ("application/x-rar-compressed", .rar),
        "rpm": ("application/x-redhat-package-manager", .rpm),
        "sea": ("application/x-sea", .sea),
        "swf": ("application/x-shockwave-flash", .swf),
        "sit": ("application/x-stuffit", .sit),
        "tcl": ("application/x-tcl", .tcl),
        "tk": ("application/x-tcl", .tk),
        "der": ("application/x-x509-ca-cert", .der),
        "pem": ("application/x-x509-ca-cert", .pem),
        "crt": ("application/x-x509-ca-cert", .crt),
        "xpi": ("application/x-xpinstall", .xpi),
        "xhtml": ("application/xhtml+xml", .html),
        "xspf": ("application/xspf+xml", .xspf),
        "xz": ("application/x-xz", .xz),
        "sqlite": ("application/x-sqlite3", .sqlite),
        "nes": ("application/x-nintendo-nes-rom", .nes),
        "crx": ("application/x-google-chrome-extension", .crx),
        "ar": ("application/x-unix-archive", .ar),
        "zip": ("application/zip", .zip),
        "tar": ("application/x-tar", .tar),
        "gz": ("application/gzip", .gz),
        "bz2": ("application/x-bzip2", .bz2),
        "z": ("application/x-compress", .z),
        "lz": ("application/x-lzip", .lz),
        "bin": ("application/octet-stream", .bin),
        "cab": ("application/vnd.ms-cab-compressed", .cab),
        "exe": ("application/octet-stream", .exe),
        "dll": ("application/octet-stream", .dll),
        "deb": ("application/x-deb", .deb),
        "dmg": ("application/octet-stream", .dmg),
        "iso": ("application/octet-stream", .iso),
        "img": ("application/octet-stream", .img),
        "msi": ("application/octet-stream", .msi),
        "msp": ("application/octet-stream", .msp),
        "msm": ("application/octet-stream", .msm),
        "mxf": ("application/mxf", .mxf),
        "rpm": ("application/x-rpm", .rpm),
        "docx": ("application/vnd.openxmlformats-officedocument.wordprocessingml.document", .doc),
        "xlsx": ("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", .xls),
        "pptx": ("application/vnd.openxmlformats-officedocument.presentationml.presentation", .ppt),
        "amr": ("audio/amr", .amr),
        "flac": ("audio/x-flac", .flac),
        "mid": ("audio/midi", .midi),
        "midi": ("audio/midi", .midi),
        "kar": ("audio/midi", .midi),
        "mp3": ("audio/mpeg", .mp3),
        "ogg": ("audio/ogg", .ogg),
        "opus": ("audio/opus", .opus),
        "m4a": ("audio/x-m4a", .m4a),
        "wav": ("audio/x-wav", .wav),
        "ra": ("audio/x-realaudio", .ra),
        "3gpp": ("video/3gpp", .threeGp),
        "3gp": ("video/3gpp", .threeGp),
        "ts": ("video/mp2t", .ts),
        "mp4": ("video/mp4", .mp4),
        "mpeg": ("video/mpeg", .mpg),
        "mpg": ("video/mpeg", .mpg),
        "mov": ("video/quicktime", .mov),
        "webm": ("video/webm", .webm),
        "flv": ("video/x-flv", .flv),
        "m4v": ("video/x-m4v", .m4v),
        "mkv": ("video/x-matroska", .mkv),
        "mng": ("video/x-mng", .mng),
        "asx": ("video/x-ms-asf", .asx),
        "asf": ("video/x-ms-asf", .asf),
        "wmv": ("video/x-ms-wmv", .wmv),
        "avi": ("video/x-msvideo", .avi)
    ]
    
}

public enum FileType: String, Codable {
    case amr
    case ai
    case ar
    case asf
    case asx
    case atom
    case avi
    case bin
    case bmp
    case bz2
    case cab
    case cco
    case cr2
    case crt
    case crx
    case css
    case deb
    case der
    case dll
    case dmg
    case doc
    case ear
    case eot
    case eps
    case epub
    case exe
    case flac
    case flif
    case flv
    case gif
    case gz
    case hqx
    case htc
    case html
    case ico
    case img
    case iso
    case jad
    case jar
    case jardiff
    case jng
    case jnlp
    case jpg
    case js
    case json
    case jxr
    case kml
    case kmz
    case lz
    case m3u8
    case m4a
    case m4v
    case md
    case midi
    case mkv
    case mml
    case mng
    case mov
    case mp3
    case mp4
    case mpg
    case msi
    case msm
    case msp
    case mxf
    case nes
    case ogg
    case opus
    case otf
    case pdf
    case pdb
    case pem
    case pl
    case pm
    case png
    case ppt
    case prc
    case ps
    case psd
    case ra
    case rar
    case rpm
    case rss
    case rtf
    case run
    case sea
    case sevenZ
    case sit
    case sqlite
    case svg
    case swf
    case tar
    case tcl
    case threeGp
    case tif
    case tk
    case ts
    case ttf
    case txt
    case war
    case wav
    case wbmp
    case webm
    case webp
    case wml
    case wmlc
    case wmv
    case woff
    case xls
    case xml
    case xpi
    case xspf
    case xz
    case z
    case zip
}

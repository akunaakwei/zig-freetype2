const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const linkage = b.option(std.builtin.LinkMode, "linkage", "Linkage type for the library") orelse .static;

    const ft_config_option_environment_properties = b.option(bool, "FT_CONFIG_OPTION_ENVIRONMENT_PROPERTIES", "FT_CONFIG_OPTION_ENVIRONMENT_PROPERTIES") orelse true;
    const ft_config_option_subpixel_rendering = b.option(bool, "FT_CONFIG_OPTION_SUBPIXEL_RENDERING", "FT_CONFIG_OPTION_SUBPIXEL_RENDERING");
    const ft_config_option_force_int64 = b.option(bool, "FT_CONFIG_OPTION_FORCE_INT64", "FT_CONFIG_OPTION_FORCE_INT64");
    const ft_config_option_no_assembler = b.option(bool, "FT_CONFIG_OPTION_NO_ASSEMBLER", "FT_CONFIG_OPTION_NO_ASSEMBLER");
    const ft_config_option_inline_mulfix = b.option(bool, "FT_CONFIG_OPTION_INLINE_MULFIX", "FT_CONFIG_OPTION_INLINE_MULFIX") orelse true;
    const ft_config_option_use_lzw = b.option(bool, "FT_CONFIG_OPTION_USE_LZW", "FT_CONFIG_OPTION_USE_LZW");
    const ft_config_option_use_zlib = b.option(bool, "FT_CONFIG_OPTION_USE_ZLIB", "FT_CONFIG_OPTION_USE_ZLIB");
    // const ft_config_option_system_zlib = b.option(bool, "FT_CONFIG_OPTION_SYSTEM_ZLIB", "FT_CONFIG_OPTION_SYSTEM_ZLIB") orelse ft_config_option_use_zlib;
    const ft_config_option_use_bzip2 = b.option(bool, "FT_CONFIG_OPTION_USE_BZIP2", "FT_CONFIG_OPTION_USE_BZIP2");
    const ft_config_option_disable_stream_support = b.option(bool, "FT_CONFIG_OPTION_DISABLE_STREAM_SUPPORT", "FT_CONFIG_OPTION_DISABLE_STREAM_SUPPORT");
    const ft_config_option_use_png = b.option(bool, "FT_CONFIG_OPTION_USE_PNG", "FT_CONFIG_OPTION_USE_PNG");
    const ft_config_option_use_harfbuzz = b.option(bool, "FT_CONFIG_OPTION_USE_HARFBUZZ", "FT_CONFIG_OPTION_USE_HARFBUZZ");
    const ft_config_option_use_harfbuzz_dynamic = b.option(bool, "FT_CONFIG_OPTION_USE_HARFBUZZ_DYNAMIC", "FT_CONFIG_OPTION_USE_HARFBUZZ_DYNAMIC");
    const ft_config_option_use_brotli = b.option(bool, "FT_CONFIG_OPTION_USE_BROTLI", "FT_CONFIG_OPTION_USE_BROTLI");
    const ft_config_option_postscript_names = b.option(bool, "FT_CONFIG_OPTION_POSTSCRIPT_NAMES", "FT_CONFIG_OPTION_POSTSCRIPT_NAMES") orelse true;
    const ft_config_option_adobe_glyph_list = b.option(bool, "FT_CONFIG_OPTION_ADOBE_GLYPH_LIST", "FT_CONFIG_OPTION_ADOBE_GLYPH_LIST") orelse true;
    const ft_config_option_mac_fonts = b.option(bool, "FT_CONFIG_OPTION_MAC_FONTS", "FT_CONFIG_OPTION_MAC_FONTS") orelse true;
    const ft_config_option_incremental = b.option(bool, "FT_CONFIG_OPTION_INCREMENTAL", "FT_CONFIG_OPTION_INCREMENTAL") orelse true;
    const ft_render_pool_size = b.option(u32, "FT_RENDER_POOL_SIZE", "FT_RENDER_POOL_SIZE") orelse 16384;
    const ft_max_modules = b.option(u32, "FT_MAX_MODULES", "FT_MAX_MODULES") orelse 32;
    const ft_debug_level_error = b.option(bool, "FT_DEBUG_LEVEL_ERROR", "FT_DEBUG_LEVEL_ERROR") orelse if (optimize == .Debug) true else null;
    const ft_debug_level_trace = b.option(bool, "FT_DEBUG_LEVEL_TRACE", "FT_DEBUG_LEVEL_TRACE") orelse if (optimize == .Debug) true else null;
    const ft_debug_logging = b.option(bool, "FT_DEBUG_LOGGING", "FT_DEBUG_LOGGING") orelse if (optimize == .Debug) true else null;
    const ft_debug_autofit = b.option(bool, "FT_DEBUG_AUTOFIT", "FT_DEBUG_AUTOFIT") orelse if (optimize == .Debug) true else null;
    const ft_debug_memory = b.option(bool, "FT_DEBUG_MEMORY", "FT_DEBUG_MEMORY") orelse if (optimize == .Debug) true else null;
    const ft_config_option_use_module_errors = b.option(bool, "FT_CONFIG_OPTION_USE_MODULE_ERRORS", "FT_CONFIG_OPTION_USE_MODULE_ERRORS");
    const ft_config_option_svg = b.option(bool, "FT_CONFIG_OPTION_SVG", "FT_CONFIG_OPTION_SVG") orelse true;
    const ft_config_option_error_strings = b.option(bool, "FT_CONFIG_OPTION_ERROR_STRINGS", "FT_CONFIG_OPTION_ERROR_STRINGS");
    const tt_config_option_embedded_bitmaps = b.option(bool, "TT_CONFIG_OPTION_EMBEDDED_BITMAPS", "TT_CONFIG_OPTION_EMBEDDED_BITMAPS") orelse true;
    const tt_config_option_color_layers = b.option(bool, "TT_CONFIG_OPTION_COLOR_LAYERS", "TT_CONFIG_OPTION_COLOR_LAYERS") orelse true;
    const tt_config_option_postscript_names = b.option(bool, "TT_CONFIG_OPTION_POSTSCRIPT_NAMES", "TT_CONFIG_OPTION_POSTSCRIPT_NAMES") orelse true;
    const tt_config_option_sfnt_names = b.option(bool, "TT_CONFIG_OPTION_SFNT_NAMES", "TT_CONFIG_OPTION_SFNT_NAMES") orelse true;
    const tt_config_cmap_format_0 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_0", "TT_CONFIG_CMAP_FORMAT_0") orelse true;
    const tt_config_cmap_format_2 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_2", "TT_CONFIG_CMAP_FORMAT_2") orelse true;
    const tt_config_cmap_format_4 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_4", "TT_CONFIG_CMAP_FORMAT_4") orelse true;
    const tt_config_cmap_format_6 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_6", "TT_CONFIG_CMAP_FORMAT_6") orelse true;
    const tt_config_cmap_format_8 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_8", "TT_CONFIG_CMAP_FORMAT_8") orelse true;
    const tt_config_cmap_format_10 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_10", "TT_CONFIG_CMAP_FORMAT_10") orelse true;
    const tt_config_cmap_format_12 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_12", "TT_CONFIG_CMAP_FORMAT_12") orelse true;
    const tt_config_cmap_format_13 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_13", "TT_CONFIG_CMAP_FORMAT_13") orelse true;
    const tt_config_cmap_format_14 = b.option(bool, "TT_CONFIG_CMAP_FORMAT_14", "TT_CONFIG_CMAP_FORMAT_14") orelse true;
    const tt_config_option_bytecode_interpreter = b.option(bool, "TT_CONFIG_OPTION_BYTECODE_INTERPRETER", "TT_CONFIG_OPTION_BYTECODE_INTERPRETER") orelse true;
    const tt_config_option_subpixel_hinting = b.option(bool, "TT_CONFIG_OPTION_SUBPIXEL_HINTING", "TT_CONFIG_OPTION_SUBPIXEL_HINTING") orelse true;
    const tt_config_option_component_offset_scaled = b.option(bool, "TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED", "TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED");
    const tt_config_option_gx_var_support = b.option(bool, "TT_CONFIG_OPTION_GX_VAR_SUPPORT", "TT_CONFIG_OPTION_GX_VAR_SUPPORT") orelse true;
    const tt_config_option_no_boring_expansion = b.option(bool, "TT_CONFIG_OPTION_NO_BORING_EXPANSION", "TT_CONFIG_OPTION_NO_BORING_EXPANSION");
    const tt_config_option_bdf = b.option(bool, "TT_CONFIG_OPTION_BDF", "TT_CONFIG_OPTION_BDF") orelse true;
    const tt_config_option_gpos_kerning = b.option(bool, "TT_CONFIG_OPTION_GPOS_KERNING", "TT_CONFIG_OPTION_GPOS_KERNING") orelse true;
    const tt_config_option_max_runnable_opcodes = b.option(u32, "TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES", "TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES") orelse 1000000;
    const t1_max_dict_depth = b.option(u32, "T1_MAX_DICT_DEPTH", "T1_MAX_DICT_DEPTH") orelse 5;
    const t1_max_subrs_calls = b.option(u32, "T1_MAX_SUBRS_CALLS", "T1_MAX_SUBRS_CALLS") orelse 16;
    const t1_max_charstrings_operands = b.option(u32, "T1_MAX_CHARSTRINGS_OPERANDS", "T1_MAX_CHARSTRINGS_OPERANDS") orelse 256;
    const t1_config_option_no_afm = b.option(bool, "T1_CONFIG_OPTION_NO_AFM", "T1_CONFIG_OPTION_NO_AFM");
    const t1_config_option_no_mm_support = b.option(bool, "T1_CONFIG_OPTION_NO_MM_SUPPORT", "T1_CONFIG_OPTION_NO_MM_SUPPORT");
    const t1_config_option_old_engine = b.option(bool, "T1_CONFIG_OPTION_OLD_ENGINE", "T1_CONFIG_OPTION_OLD_ENGINE") orelse true;
    const cff_config_option_darkening_parameter_x1 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1") orelse 500;
    const cff_config_option_darkening_parameter_y1 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1") orelse 400;
    const cff_config_option_darkening_parameter_x2 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2") orelse 1000;
    const cff_config_option_darkening_parameter_y2 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2") orelse 275;
    const cff_config_option_darkening_parameter_x3 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3") orelse 1667;
    const cff_config_option_darkening_parameter_y3 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3") orelse 275;
    const cff_config_option_darkening_parameter_x4 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4") orelse 2333;
    const cff_config_option_darkening_parameter_y4 = b.option(u32, "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4", "CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4") orelse 0;
    const cff_config_option_old_engine = b.option(bool, "CFF_CONFIG_OPTION_OLD_ENGINE", "CFF_CONFIG_OPTION_OLD_ENGINE") orelse true;
    const pcf_config_option_long_family_names = b.option(bool, "PCF_CONFIG_OPTION_LONG_FAMILY_NAMES", "PCF_CONFIG_OPTION_LONG_FAMILY_NAMES") orelse true;
    const af_config_option_cjk = b.option(bool, "AF_CONFIG_OPTION_CJK", "AF_CONFIG_OPTION_CJK") orelse true;
    const af_config_option_tt_size_metrics = b.option(bool, "AF_CONFIG_OPTION_TT_SIZE_METRICS", "AF_CONFIG_OPTION_TT_SIZE_METRICS");

    const freetype_dep = b.dependency("freetype", .{});
    const minised_dep = b.dependency("minised", .{
        .target = b.graph.host,
        .optimize = .ReleaseFast,
    });
    const minised = minised_dep.artifact("minised");
    const maybe_brotli_dep = brotli_dep: {
        if (ft_config_option_use_brotli == null)
            break :brotli_dep null;
        if (!ft_config_option_use_brotli.?)
            break :brotli_dep null;

        break :brotli_dep b.lazyDependency("brotli", .{
            .target = target,
            .optimize = optimize,
        });
    };
    const maybe_miniz_dep = miniz_dep: {
        if (ft_config_option_use_zlib == null)
            break :miniz_dep null;
        if (!ft_config_option_use_zlib.?)
            break :miniz_dep null;

        break :miniz_dep b.lazyDependency("miniz", .{
            .target = target,
            .optimize = optimize,
        });
    };
    const maybe_png_dep = png_dep: {
        if (ft_config_option_use_png == null)
            break :png_dep null;
        if (!ft_config_option_use_png.?)
            break :png_dep null;

        break :png_dep b.lazyDependency("png", .{
            .target = target,
            .optimize = optimize,
        });
    };
    const maybe_bzip2_dep = bzip2_dep: {
        if (ft_config_option_use_bzip2 == null)
            break :bzip2_dep null;
        if (!ft_config_option_use_bzip2.?)
            break :bzip2_dep null;

        break :bzip2_dep b.lazyDependency("bzip2", .{
            .target = target,
            .optimize = optimize,
        });
    };
    const maybe_harfbuzz_dep = harfbuzz_dep: {
        if (ft_config_option_use_harfbuzz == null)
            break :harfbuzz_dep null;
        if (!ft_config_option_use_harfbuzz.?)
            break :harfbuzz_dep null;
        if (ft_config_option_use_harfbuzz_dynamic != null)
            break :harfbuzz_dep null;

        break :harfbuzz_dep b.lazyDependency("harfbuzz", .{
            .target = target,
            .optimize = optimize,
        });
    };

    const ftoption_in_cmd = b.addRunArtifact(minised);
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|/\\* #define \\(.*\\)\\*/|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(FT_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(TT_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(CFF_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(T1_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(PCF_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addArg("-e");
    ftoption_in_cmd.addArg("s|#define \\(AF_.*\\)|#undef \\1|g");
    ftoption_in_cmd.addFileArg(freetype_dep.path("devel/ftoption.h"));
    const ftoption_in = ftoption_in_cmd.captureStdOut();

    const ftoption = b.addConfigHeader(.{
        .style = .{ .autoconf_undef = ftoption_in },
        .include_path = "freetype/config/ftoption.h",
    }, .{
        .FT_CONFIG_OPTION_ENVIRONMENT_PROPERTIES = ft_config_option_environment_properties,
        .FT_CONFIG_OPTION_SUBPIXEL_RENDERING = ft_config_option_subpixel_rendering,
        .FT_CONFIG_OPTION_FORCE_INT64 = ft_config_option_force_int64,
        .FT_CONFIG_OPTION_NO_ASSEMBLER = ft_config_option_no_assembler,
        .FT_CONFIG_OPTION_INLINE_MULFIX = ft_config_option_inline_mulfix,
        .FT_CONFIG_OPTION_USE_LZW = ft_config_option_use_lzw,
        .FT_CONFIG_OPTION_USE_ZLIB = ft_config_option_use_zlib,
        .FT_CONFIG_OPTION_SYSTEM_ZLIB = ft_config_option_use_zlib,
        .FT_CONFIG_OPTION_USE_BZIP2 = ft_config_option_use_bzip2,
        .FT_CONFIG_OPTION_DISABLE_STREAM_SUPPORT = ft_config_option_disable_stream_support,
        .FT_CONFIG_OPTION_USE_PNG = ft_config_option_use_png,
        .FT_CONFIG_OPTION_USE_HARFBUZZ = ft_config_option_use_harfbuzz,
        .FT_CONFIG_OPTION_USE_HARFBUZZ_DYNAMIC = ft_config_option_use_harfbuzz_dynamic,
        .FT_CONFIG_OPTION_USE_BROTLI = ft_config_option_use_brotli,
        .FT_CONFIG_OPTION_POSTSCRIPT_NAMES = ft_config_option_postscript_names,
        .FT_CONFIG_OPTION_ADOBE_GLYPH_LIST = ft_config_option_adobe_glyph_list,
        .FT_CONFIG_OPTION_MAC_FONTS = ft_config_option_mac_fonts,
        .FT_CONFIG_OPTION_INCREMENTAL = ft_config_option_incremental,
        .FT_RENDER_POOL_SIZE = ft_render_pool_size,
        .FT_MAX_MODULES = ft_max_modules,
        .FT_DEBUG_LEVEL_ERROR = ft_debug_level_error,
        .FT_DEBUG_LEVEL_TRACE = ft_debug_level_trace,
        .FT_DEBUG_LOGGING = ft_debug_logging,
        .FT_DEBUG_AUTOFIT = ft_debug_autofit,
        .FT_DEBUG_MEMORY = ft_debug_memory,
        .FT_CONFIG_OPTION_USE_MODULE_ERRORS = ft_config_option_use_module_errors,
        .FT_CONFIG_OPTION_SVG = ft_config_option_svg,
        .FT_CONFIG_OPTION_ERROR_STRINGS = ft_config_option_error_strings,
        .TT_CONFIG_OPTION_EMBEDDED_BITMAPS = tt_config_option_embedded_bitmaps,
        .TT_CONFIG_OPTION_COLOR_LAYERS = tt_config_option_color_layers,
        .TT_CONFIG_OPTION_POSTSCRIPT_NAMES = tt_config_option_postscript_names,
        .TT_CONFIG_OPTION_SFNT_NAMES = tt_config_option_sfnt_names,
        .TT_CONFIG_CMAP_FORMAT_0 = tt_config_cmap_format_0,
        .TT_CONFIG_CMAP_FORMAT_2 = tt_config_cmap_format_2,
        .TT_CONFIG_CMAP_FORMAT_4 = tt_config_cmap_format_4,
        .TT_CONFIG_CMAP_FORMAT_6 = tt_config_cmap_format_6,
        .TT_CONFIG_CMAP_FORMAT_8 = tt_config_cmap_format_8,
        .TT_CONFIG_CMAP_FORMAT_10 = tt_config_cmap_format_10,
        .TT_CONFIG_CMAP_FORMAT_12 = tt_config_cmap_format_12,
        .TT_CONFIG_CMAP_FORMAT_13 = tt_config_cmap_format_13,
        .TT_CONFIG_CMAP_FORMAT_14 = tt_config_cmap_format_14,
        .TT_CONFIG_OPTION_BYTECODE_INTERPRETER = tt_config_option_bytecode_interpreter,
        .TT_CONFIG_OPTION_SUBPIXEL_HINTING = tt_config_option_subpixel_hinting,
        .TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED = tt_config_option_component_offset_scaled,
        .TT_CONFIG_OPTION_GX_VAR_SUPPORT = tt_config_option_gx_var_support,
        .TT_CONFIG_OPTION_NO_BORING_EXPANSION = tt_config_option_no_boring_expansion,
        .TT_CONFIG_OPTION_BDF = tt_config_option_bdf,
        .TT_CONFIG_OPTION_GPOS_KERNING = tt_config_option_gpos_kerning,
        .TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES = tt_config_option_max_runnable_opcodes,
        .T1_MAX_DICT_DEPTH = t1_max_dict_depth,
        .T1_MAX_SUBRS_CALLS = t1_max_subrs_calls,
        .T1_MAX_CHARSTRINGS_OPERANDS = t1_max_charstrings_operands,
        .T1_CONFIG_OPTION_NO_AFM = t1_config_option_no_afm,
        .T1_CONFIG_OPTION_NO_MM_SUPPORT = t1_config_option_no_mm_support,
        .T1_CONFIG_OPTION_OLD_ENGINE = t1_config_option_old_engine,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1 = cff_config_option_darkening_parameter_x1,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1 = cff_config_option_darkening_parameter_y1,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2 = cff_config_option_darkening_parameter_x2,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2 = cff_config_option_darkening_parameter_y2,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3 = cff_config_option_darkening_parameter_x3,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3 = cff_config_option_darkening_parameter_y3,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4 = cff_config_option_darkening_parameter_x4,
        .CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4 = cff_config_option_darkening_parameter_y4,
        .CFF_CONFIG_OPTION_OLD_ENGINE = cff_config_option_old_engine,
        .PCF_CONFIG_OPTION_LONG_FAMILY_NAMES = pcf_config_option_long_family_names,
        .AF_CONFIG_OPTION_CJK = af_config_option_cjk,
        .AF_CONFIG_OPTION_TT_SIZE_METRICS = af_config_option_tt_size_metrics,
        .FT_CONFIG_OPTION_GUESSING_EMBEDDED_RFORK = true,
        .AF_CONFIG_OPTION_INDIC = true,
        .FT_CONFIG_OPTION_OLD_INTERNALS = null,
    });

    const ftsystem = switch (target.result.os.tag) {
        .windows => freetype_dep.path("builds/windows/ftsystem.c"),
        .linux => freetype_dep.path("builds/unix/ftsystem.c"),
        else => freetype_dep.path("src/base/ftsystem.c"),
    };
    const ftdebug = switch (target.result.os.tag) {
        .windows => freetype_dep.path("builds/windows/ftdebug.c"),
        else => freetype_dep.path("src/base/ftdebug.c"),
    };

    const flags = .{
        "-DFT2_BUILD_LIBRARY",
        "-Wno-incompatible-function-pointer-types",
    };

    const freetype = b.addLibrary(.{
        .name = "freetype",
        .root_module = b.createModule(.{
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
        .linkage = linkage,
    });
    if (maybe_brotli_dep) |brotli_dep| {
        const dec = brotli_dep.artifact("brotlidec");
        freetype.linkLibrary(dec);
    }
    if (maybe_miniz_dep) |z_dep| {
        const miniz = z_dep.artifact("miniz");
        freetype.linkLibrary(miniz);
    }
    if (maybe_png_dep) |png_dep| {
        const png = png_dep.artifact("png");
        freetype.linkLibrary(png);
    }
    if (maybe_bzip2_dep) |bzip2_dep| {
        const bz2 = bzip2_dep.artifact("bz2");
        freetype.linkLibrary(bz2);
    }
    if (maybe_harfbuzz_dep) |harfbuzz_dep| {
        const hb = harfbuzz_dep.artifact("harfbuzz");
        freetype.linkLibrary(hb);
    }

    freetype.addWin32ResourceFile(.{ .file = freetype_dep.path("src/base/ftver.rc") });
    freetype.addConfigHeader(ftoption);
    freetype.addIncludePath(freetype_dep.path("include"));
    freetype.addCSourceFiles(.{
        .root = freetype_dep.path("src"),
        .files = &sources,
        .flags = &flags,
    });
    freetype.addCSourceFile(.{ .file = ftsystem, .flags = &flags });
    freetype.addCSourceFile(.{ .file = ftdebug, .flags = &flags });
    if (optimize == .Debug) {
        freetype.addCSourceFiles(.{
            .root = freetype_dep.path("src"),
            .files = &debug_sources,
            .flags = &flags,
        });
    }

    freetype.installHeadersDirectory(freetype_dep.path("include"), ".", .{
        .exclude_extensions = &.{"freetype/internal"},
    });
    b.installArtifact(freetype);
}

const sources = .{
    "autofit/autofit.c",
    "base/ftbase.c",
    "base/ftbbox.c",
    "base/ftbdf.c",
    "base/ftbitmap.c",
    "base/ftcid.c",
    "base/ftfstype.c",
    "base/ftgasp.c",
    "base/ftglyph.c",
    "base/ftgxval.c",
    "base/ftinit.c",
    "base/ftmm.c",
    "base/ftotval.c",
    "base/ftpatent.c",
    "base/ftpfr.c",
    "base/ftstroke.c",
    "base/ftsynth.c",
    "base/fttype1.c",
    "base/ftwinfnt.c",
    "bdf/bdf.c",
    "bzip2/ftbzip2.c",
    "cache/ftcache.c",
    "cff/cff.c",
    "cid/type1cid.c",
    "gzip/ftgzip.c",
    "lzw/ftlzw.c",
    "pcf/pcf.c",
    "pfr/pfr.c",
    "psaux/psaux.c",
    "pshinter/pshinter.c",
    "psnames/psnames.c",
    "raster/raster.c",
    "sdf/sdf.c",
    "sfnt/sfnt.c",
    "smooth/smooth.c",
    "svg/svg.c",
    "truetype/truetype.c",
    "type1/type1.c",
    "type42/type42.c",
    "winfonts/winfnt.c",
};

const debug_sources = .{
    "dlg/dlg.c",
};

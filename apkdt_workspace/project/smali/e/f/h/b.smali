.class public final Le/f/h/b;
.super Ljava/lang/Object;
.source "DefaultImageFormats.java"


# static fields
.field public static final a:Le/f/h/c;

.field public static final b:Le/f/h/c;

.field public static final c:Le/f/h/c;

.field public static final d:Le/f/h/c;

.field public static final e:Le/f/h/c;

.field public static final f:Le/f/h/c;

.field public static final g:Le/f/h/c;

.field public static final h:Le/f/h/c;

.field public static final i:Le/f/h/c;

.field public static final j:Le/f/h/c;

.field public static final k:Le/f/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/f/h/c;

    const-string v1, "JPEG"

    const-string v2, "jpeg"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->a:Le/f/h/c;

    .line 2
    new-instance v0, Le/f/h/c;

    const-string v1, "PNG"

    const-string v2, "png"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->b:Le/f/h/c;

    .line 3
    new-instance v0, Le/f/h/c;

    const-string v1, "GIF"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->c:Le/f/h/c;

    .line 4
    new-instance v0, Le/f/h/c;

    const-string v1, "BMP"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->d:Le/f/h/c;

    .line 5
    new-instance v0, Le/f/h/c;

    const-string v1, "ICO"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->e:Le/f/h/c;

    .line 6
    new-instance v0, Le/f/h/c;

    const-string v1, "webp"

    const-string v2, "WEBP_SIMPLE"

    invoke-direct {v0, v2, v1}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->f:Le/f/h/c;

    .line 7
    new-instance v0, Le/f/h/c;

    const-string v2, "WEBP_LOSSLESS"

    invoke-direct {v0, v2, v1}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->g:Le/f/h/c;

    .line 8
    new-instance v0, Le/f/h/c;

    const-string v2, "WEBP_EXTENDED"

    invoke-direct {v0, v2, v1}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->h:Le/f/h/c;

    .line 9
    new-instance v0, Le/f/h/c;

    const-string v2, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v2, v1}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->i:Le/f/h/c;

    .line 10
    new-instance v0, Le/f/h/c;

    const-string v2, "WEBP_ANIMATED"

    invoke-direct {v0, v2, v1}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->j:Le/f/h/c;

    .line 11
    new-instance v0, Le/f/h/c;

    const-string v1, "HEIF"

    const-string v2, "heif"

    invoke-direct {v0, v1, v2}, Le/f/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/f/h/b;->k:Le/f/h/c;

    return-void
.end method

.method public static a(Le/f/h/c;)Z
    .locals 1

    .line 1
    sget-object v0, Le/f/h/b;->f:Le/f/h/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Le/f/h/b;->g:Le/f/h/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Le/f/h/b;->h:Le/f/h/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Le/f/h/b;->i:Le/f/h/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Le/f/h/c;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Le/f/h/b;->a(Le/f/h/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/f/h/b;->j:Le/f/h/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

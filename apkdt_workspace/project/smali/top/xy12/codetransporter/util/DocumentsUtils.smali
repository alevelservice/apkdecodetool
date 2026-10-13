.class public Ltop/xy12/codetransporter/util/DocumentsUtils;
.super Ljava/lang/Object;
.source "DocumentsUtils.java"


# static fields
.field public static final OPEN_DOCUMENT_TREE_CODE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "DocumentsUtils"

.field private static sExtSdCardPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWrite(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    .line 216
    invoke-static {p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 219
    invoke-static {p1, v0, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static canWrite(Ljava/io/File;)Z
    .locals 4

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 203
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return v0
.end method

.method public static checkWritableRootPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 381
    sget-object v1, Ltop/xy12/codetransporter/util/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sd card can not write:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",is on extsdcard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {v0, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 383
    invoke-static {v0, v4, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get document file:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    .line 387
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    .line 389
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, ""

    .line 390
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "lum_2 get perf documentUri:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 395
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "lum get perf documentUri:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p0, :cond_6

    .line 398
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v4

    .line 402
    :cond_9
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->TAG:Ljava/lang/String;

    const-string p1, "sd card can write..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static cleanCache()V
    .locals 1

    .line 42
    sget-object v0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 190
    invoke-static {p1, v1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;
    .locals 6

    .line 125
    invoke-static {p0, p2}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object p0, v1

    const/4 v4, 0x1

    .line 146
    :goto_0
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    .line 156
    :cond_3
    invoke-static {p2, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz v4, :cond_4

    return-object p2

    :cond_4
    const-string v0, "/"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 159
    :goto_2
    array-length v0, p0

    if-ge v2, v0, :cond_8

    .line 160
    aget-object v0, p0, v2

    invoke-virtual {p2, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_7

    .line 163
    array-length v0, p0

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "image"

    .line 166
    aget-object v1, p0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    goto :goto_4

    .line 164
    :cond_6
    :goto_3
    aget-object v0, p0, v2

    invoke-virtual {p2, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    goto :goto_4

    :cond_7
    move-object p2, v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-object p2

    :catch_1
    return-object v1
.end method

.method private static getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 85
    invoke-static {p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 87
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    aget-object p0, p1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .line 52
    sget-object v0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 53
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "external"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/Android/data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    .line 59
    sget-object v6, Ltop/xy12/codetransporter/util/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected external file dir: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 63
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    sget-object v6, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_3
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    const-string v0, "/storage/sdcard1"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getFileDescriptor(Landroid/content/Context;Ljava/io/File;)Ljava/io/FileDescriptor;
    .locals 3

    const/4 v0, 0x0

    .line 329
    :try_start_0
    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 330
    invoke-static {p1, v1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 331
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "rw"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_4

    .line 338
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {p0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x0

    .line 339
    :try_start_2
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 340
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    :try_start_3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catch_0
    move-exception p0

    .line 348
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 342
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_2

    .line 346
    :try_start_6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_4
    move-exception p0

    .line 348
    :try_start_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    :cond_1
    :goto_3
    throw p1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception p0

    .line 354
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static getInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-static {p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 269
    invoke-static {p1, v1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x0

    .line 286
    :try_start_0
    invoke-static {p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 287
    invoke-static {p1, v1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3

    const/4 v0, 0x0

    .line 311
    :try_start_0
    invoke-static {p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-static {p1, v2, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 313
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    const-string v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wa"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z
    .locals 0

    .line 106
    invoke-static {p0, p1}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mkdirs(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 179
    invoke-static {p1, v0, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static renameTo(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const-string v0, "src.getParent():"

    .line 233
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    invoke-static {p2, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    invoke-static {p1, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 238
    invoke-static {p1, v3, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 242
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, p0}, Ltop/xy12/codetransporter/util/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    :try_start_0
    const-string v6, "renameTo"

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",dest.getParent():"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p0

    move v1, p0

    goto :goto_1

    .line 248
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 250
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-static {p1, v0, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 253
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    .line 254
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 251
    invoke-static {p0, p1, p2, v0}, Ltop/xy12/codetransporter/util/SimUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v1
.end method

.method public static saveTreeUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    .line 360
    invoke-static {p0, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 363
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "save uri"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 367
    :cond_0
    sget-object p0, Ltop/xy12/codetransporter/util/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "no write permission: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.class public Lcom/zoloz/webcontainer/p/c;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    invoke-static {p2, p1}, Lcom/zoloz/webcontainer/p/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ZipUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "failed to create unzip folder."

    .line 3
    invoke-static {v1, p0}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 6
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unzip entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "../"

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 10
    :cond_1
    invoke-static {v4, p2}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 12
    invoke-static {v4}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v4, p1}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create file "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 16
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 17
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_0

    .line 20
    :cond_6
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "unzip exception"

    .line 21
    invoke-static {p1, p0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    .line 23
    invoke-static {p2, p1}, Lcom/zoloz/webcontainer/p/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ZipUtil"

    if-nez v1, :cond_0

    const-string p0, "failed to create unzip folder."

    .line 24
    invoke-static {v2, p0}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 25
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 27
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unzip entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "../"

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 31
    :cond_1
    invoke-static {v4, p2}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 33
    invoke-static {v4}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {v4, p1}, Lcom/zoloz/webcontainer/p/a;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create file "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 37
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 38
    invoke-virtual {p0, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 39
    :cond_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 40
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_0

    .line 41
    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "unzip exception"

    .line 42
    invoke-static {p1, p0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0

    :catch_1
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.class Landroidx/browser/browseractions/BrowserServiceFileProvider$c;
.super Landroid/os/AsyncTask;
.source "BrowserServiceFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/browseractions/BrowserServiceFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Landroid/net/Uri;

.field private final e:La/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/a/b<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;La/f/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            "La/f/a/b<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->c:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->d:Landroid/net/Uri;

    .line 6
    iput-object p5, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    return-void
.end method

.method private a()V
    .locals 5

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "image_provider"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    sget-object v1, Landroidx/browser/browseractions/BrowserServiceFileProvider;->sFileCleanupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create file directory."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    .line 7
    monitor-exit v1

    return-void

    .line 8
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    iget-object v3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->d:Landroid/net/Uri;

    invoke-virtual {v0, v3}, La/f/a/b;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v2}, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a(Ljava/io/File;)V

    .line 12
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x64

    const/16 v2, 0x16

    if-lt v0, v2, :cond_0

    .line 15
    new-instance v0, La/i/m/a;

    invoke-direct {v0, p1}, La/i/m/a;-><init>(Ljava/io/File;)V

    .line 16
    :try_start_0
    invoke-virtual {v0}, La/i/m/a;->a()Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->c:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 19
    invoke-virtual {v0, p1}, La/i/m/a;->b(Ljava/io/FileOutputStream;)V

    .line 20
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, La/f/a/b;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, p1}, La/i/m/a;->a(Ljava/io/FileOutputStream;)V

    .line 22
    iget-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    invoke-virtual {p1, v1}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 23
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 24
    iget-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->c:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 26
    iget-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0}, La/f/a/b;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 27
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->e:La/f/a/b;

    invoke-virtual {v0, p1}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .line 2
    new-instance p1, Landroidx/browser/browseractions/BrowserServiceFileProvider$b;

    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/browser/browseractions/BrowserServiceFileProvider$b;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/browser/browseractions/BrowserServiceFileProvider$c;->a(Ljava/lang/Void;)V

    return-void
.end method

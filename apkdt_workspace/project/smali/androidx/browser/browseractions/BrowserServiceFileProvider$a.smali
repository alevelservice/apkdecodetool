.class final Landroidx/browser/browseractions/BrowserServiceFileProvider$a;
.super Ljava/lang/Object;
.source "BrowserServiceFileProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserServiceFileProvider;->loadBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/content/ContentResolver;

.field final synthetic f:Landroid/net/Uri;

.field final synthetic g:La/f/a/b;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;La/f/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->e:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->f:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->g:La/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->f:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->g:La/f/a/b;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-virtual {v0, v1}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->g:La/f/a/b;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "File could not be decoded."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->g:La/f/a/b;

    invoke-virtual {v0, v1}, La/f/a/b;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$a;->g:La/f/a/b;

    invoke-virtual {v1, v0}, La/f/a/b;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

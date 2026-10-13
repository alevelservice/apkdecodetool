.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;
.super Landroid/webkit/WebChromeClient;
.source "InAppWebViewChromeClient.java"

# interfaces
.implements Lg/a/c/a/m$a;
.implements Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$g;


# static fields
.field public static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static n:I

.field protected static final o:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

.field private f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

.field public g:Lg/a/c/a/k;

.field private h:Landroid/net/Uri;

.field private i:Landroid/view/View;

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->n:I

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->o:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    .line 8
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->b:Lg/a/c/a/m$d;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1, p0}, Lg/a/c/a/m$d;->a(Lg/a/c/a/m$a;)Lg/a/c/a/m$d;

    goto :goto_2

    .line 10
    :cond_3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    :goto_2
    return-void
.end method

.method private a([Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 76
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string p1, "image-"

    const-string v0, ".jpg"

    goto :goto_0

    :cond_0
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const-string p1, "video-"

    const-string v0, ".mp4"

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v0, p1

    .line 87
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    .line 89
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 92
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 93
    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->d([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    invoke-direct {p0, p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 80
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Intent;I)[Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 53
    invoke-static {p2, p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    .line 56
    new-array v0, p2, [Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private b([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->d([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video"

    invoke-direct {p0, p1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 17
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 20
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flutter_inappwebview.fileprovider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private c([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 6
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->d([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "*/*"

    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 10
    aget-object v2, p1, v1

    const-string v3, "\\.\\w+"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "."

    const-string v4, ""

    .line 12
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    aput-object v2, v0, v1

    goto :goto_1

    .line 14
    :cond_1
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private d()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private d([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, p1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private e()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 95
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->e:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$a;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    .line 98
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz v0, :cond_2

    .line 100
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :cond_2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p2, p4

    .line 2
    :cond_0
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$k;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$k;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    .line 3
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 4
    :goto_0
    new-instance v0, Landroidx/appcompat/app/c$a;

    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/p;->Theme_AppCompat_Dialog_Alert:I

    invoke-direct {v0, p4, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v0, p5, p1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_1

    :cond_2
    const p2, 0x104000a

    .line 8
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 9
    :goto_1
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$l;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$l;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p2, p4

    .line 37
    :cond_0
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$d;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$d;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    .line 38
    new-instance p4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$e;

    invoke-direct {p4, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$e;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    .line 39
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 40
    :goto_0
    new-instance v1, Landroidx/appcompat/app/c$a;

    sget v2, Lcom/pichillilorenzo/flutter_inappwebview/p;->Theme_AppCompat_Dialog_Alert:I

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    if-eqz p5, :cond_2

    .line 42
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 43
    invoke-virtual {v1, p5, p1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_1

    :cond_2
    const p2, 0x104000a

    .line 44
    invoke-virtual {v1, p2, p1}, Landroidx/appcompat/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    :goto_1
    if-eqz p6, :cond_3

    .line 45
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 46
    invoke-virtual {v1, p6, p4}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_2

    :cond_3
    const/high16 p1, 0x1040000

    .line 47
    invoke-virtual {v1, p1, p4}, Landroidx/appcompat/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 48
    :goto_2
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$f;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$f;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/c$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    .line 49
    invoke-virtual {v1}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    if-eqz p6, :cond_0

    .line 15
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p3, p6

    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xf

    const/4 p3, 0x0

    const/16 p6, 0x2d

    .line 18
    invoke-virtual {v0, p6, p1, p6, p3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p5, :cond_1

    .line 20
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    move-object p2, p5

    .line 21
    :cond_1
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;

    invoke-direct {p1, p0, v1, p4, p7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    .line 22
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$a;

    invoke-direct {p3, p0, p4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsPromptResult;)V

    .line 23
    iget-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 24
    :goto_0
    new-instance p6, Landroidx/appcompat/app/c$a;

    sget p7, Lcom/pichillilorenzo/flutter_inappwebview/p;->Theme_AppCompat_Dialog_Alert:I

    invoke-direct {p6, p5, p7}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {p6, p2}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    if-eqz p9, :cond_3

    .line 26
    invoke-virtual {p9}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 27
    invoke-virtual {p6, p9, p1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_1

    :cond_3
    const p2, 0x104000a

    .line 28
    invoke-virtual {p6, p2, p1}, Landroidx/appcompat/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    :goto_1
    if-eqz p8, :cond_4

    .line 29
    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 30
    invoke-virtual {p6, p8, p3}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_2

    :cond_4
    const/high16 p1, 0x1040000

    .line 31
    invoke-virtual {p6, p1, p3}, Landroidx/appcompat/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 32
    :goto_2
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$b;

    invoke-direct {p1, p0, p4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p6, p1}, Landroidx/appcompat/app/c$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    .line 33
    invoke-virtual {p6}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c;->a(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;Landroid/content/Intent;[Ljava/lang/String;Z)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 58
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 61
    invoke-direct {p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->d()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-direct {p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->b([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->e()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a([Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 66
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.CHOOSER"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "android.intent.extra.INTENT"

    .line 67
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/os/Parcelable;

    .line 68
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    .line 71
    invoke-virtual {p1, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return p4
.end method

.method protected b()Landroid/view/ViewGroup;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    :goto_0
    const v1, 0x1020002

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p2, p4

    .line 2
    :cond_0
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$n;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$n;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    .line 3
    new-instance p4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$o;

    invoke-direct {p4, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$o;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 5
    :goto_0
    new-instance v1, Landroidx/appcompat/app/c$a;

    sget v2, Lcom/pichillilorenzo/flutter_inappwebview/p;->Theme_AppCompat_Dialog_Alert:I

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    if-eqz p5, :cond_2

    .line 7
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-virtual {v1, p5, p1}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_1

    :cond_2
    const p2, 0x104000a

    .line 9
    invoke-virtual {v1, p2, p1}, Landroidx/appcompat/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    :goto_1
    if-eqz p6, :cond_3

    .line 10
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {v1, p6, p4}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    goto :goto_2

    :cond_3
    const/high16 p1, 0x1040000

    .line 12
    invoke-virtual {v1, p1, p4}, Landroidx/appcompat/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 13
    :goto_2
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$p;

    invoke-direct {p1, p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$p;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/c$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected c()Z
    .locals 6

    const-string v0, "android.permission.CAMERA"

    .line 1
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :catch_0
    :goto_1
    return v3
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/g;->l:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq p2, v0, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    :goto_0
    sget-object p2, Lcom/pichillilorenzo/flutter_inappwebview/g;->l:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eq p2, v0, :cond_5

    .line 4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a(Landroid/content/Intent;I)[Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 7
    sget-object p2, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_6
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    new-array p2, v1, [Landroid/net/Uri;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    aput-object v0, p2, p3

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 9
    :cond_7
    :goto_1
    sput-object v2, Lcom/pichillilorenzo/flutter_inappwebview/g;->m:Landroid/webkit/ValueCallback;

    .line 10
    sput-object v2, Lcom/pichillilorenzo/flutter_inappwebview/g;->l:Landroid/webkit/ValueCallback;

    .line 11
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->h:Landroid/net/Uri;

    return v1
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v2, "onCloseWindow"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "messageLevel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v1, "onConsoleMessage"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5

    .line 1
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->n:I

    .line 2
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->n:I

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v4, "uuid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "url"

    .line 8
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "windowId"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "androidIsDialog"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "androidIsUserGesture"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "iosWKNavigationType"

    .line 12
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "iosIsForMainFrame"

    .line 13
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$g;

    invoke-direct {p2, p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$g;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;I)V

    const-string p3, "onCreateWindow"

    invoke-virtual {p1, p3, v2, p2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return v1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v2, "onGeolocationPermissionsHidePrompt"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "origin"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$h;

    invoke-direct {v2, p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$h;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string p1, "onGeolocationPermissionsShowPrompt"

    invoke-virtual {v1, p1, v0, v2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    .line 5
    iget v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->l:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->k:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v2, "onExitFullscreen"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 4
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    .line 5
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "iosIsMainFrame"

    .line 6
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$j;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$j;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "onJsAlert"

    invoke-virtual {p2, p1, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 4
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    .line 5
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "iosIsMainFrame"

    .line 6
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$c;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "onJsBeforeUnload"

    invoke-virtual {p2, p1, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 4
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    .line 5
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "iosIsMainFrame"

    .line 6
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$m;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$m;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsResult;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "onJsConfirm"

    invoke-virtual {p2, p1, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "url"

    .line 4
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    .line 5
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "defaultValue"

    .line 6
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "iosIsMainFrame"

    .line 7
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$q;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$q;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/JsPromptResult;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onJsPrompt"

    invoke-virtual {p2, p1, v0, v7}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "resources"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$i;

    invoke-direct {v2, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$i;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/webkit/PermissionRequest;)V

    const-string p1, "onPermissionRequest"

    invoke-virtual {v1, p1, v0, v2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progress"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v2, "onProgressChanged"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "icon"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v0, "onReceivedIcon"

    invoke-virtual {p1, v0, p2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "title"

    .line 7
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v0, "onTitleChanged"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "url"

    .line 5
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "precomposed"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string p3, "onReceivedTouchIconUrl"

    invoke-virtual {p2, p3, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v2, "onRequestFocus"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->onHideCustomView()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    .line 5
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->l:I

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->k:I

    .line 8
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 9
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    const/16 p1, 0x1f06

    .line 11
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x706

    .line 12
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x200

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 14
    check-cast v1, Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->i:Landroid/view/View;

    sget-object p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p2, :cond_3

    .line 17
    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v0, "uuid"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->g:Lg/a/c/a/k;

    const-string v0, "onEnterFullscreen"

    invoke-virtual {p2, v0, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a(Landroid/webkit/ValueCallback;Landroid/content/Intent;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

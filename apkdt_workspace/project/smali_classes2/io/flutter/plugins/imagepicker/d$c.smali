.class Lio/flutter/plugins/imagepicker/d$c;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Lio/flutter/plugins/imagepicker/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/d;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/d$c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d$c;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/d$h;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d$c;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    new-instance v2, Lio/flutter/plugins/imagepicker/d$c$a;

    invoke-direct {v2, p0, p2}, Lio/flutter/plugins/imagepicker/d$c$a;-><init>(Lio/flutter/plugins/imagepicker/d$c;Lio/flutter/plugins/imagepicker/d$h;)V

    .line 4
    invoke-static {v0, v1, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

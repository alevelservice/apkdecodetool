.class Lio/flutter/plugins/imagepicker/d$c$a;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/d$c;->a(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/d$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/imagepicker/d$h;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/d$c;Lio/flutter/plugins/imagepicker/d$h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/d$c$a;->a:Lio/flutter/plugins/imagepicker/d$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/d$c$a;->a:Lio/flutter/plugins/imagepicker/d$h;

    invoke-interface {p2, p1}, Lio/flutter/plugins/imagepicker/d$h;->a(Ljava/lang/String;)V

    return-void
.end method

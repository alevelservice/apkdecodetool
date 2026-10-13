.class Lio/flutter/embedding/android/FlutterView$c;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/FlutterView;->revertImageView(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/h/a;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/engine/h/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$c;->c:Lio/flutter/embedding/android/FlutterView;

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView$c;->a:Lio/flutter/embedding/engine/h/a;

    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView$c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$c;->a:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$c;->c:Lio/flutter/embedding/android/FlutterView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterView;->access$300(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/android/FlutterImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->detachFromRenderer()V

    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 0

    return-void
.end method

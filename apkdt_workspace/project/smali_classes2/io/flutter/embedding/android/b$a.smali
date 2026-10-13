.class Lio/flutter/embedding/android/b$a;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/b$a;->a:Lio/flutter/embedding/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/b$a;->a:Lio/flutter/embedding/android/b;

    invoke-static {v0}, Lio/flutter/embedding/android/b;->a(Lio/flutter/embedding/android/b;)Lio/flutter/embedding/android/b$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->onFlutterUiDisplayed()V

    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/b$a;->a:Lio/flutter/embedding/android/b;

    invoke-static {v0}, Lio/flutter/embedding/android/b;->a(Lio/flutter/embedding/android/b;)Lio/flutter/embedding/android/b$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/b$b;->onFlutterUiNoLongerDisplayed()V

    return-void
.end method

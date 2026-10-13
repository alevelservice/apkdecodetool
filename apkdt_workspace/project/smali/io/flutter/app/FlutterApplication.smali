.class public Lio/flutter/app/FlutterApplication;
.super Landroid/app/Application;
.source "FlutterApplication.java"


# instance fields
.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/app/FlutterApplication;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterApplication;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {}, Lg/a/a;->c()Lg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a;->a()Lio/flutter/embedding/engine/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/f/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/FlutterApplication;->e:Landroid/app/Activity;

    return-void
.end method

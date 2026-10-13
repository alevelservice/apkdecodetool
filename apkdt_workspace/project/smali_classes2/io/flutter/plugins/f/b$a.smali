.class final Lio/flutter/plugins/f/b$a;
.super Ljava/lang/Object;
.source "FlutterCookieManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/f/b;->a(Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/k$d;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lg/a/c/a/k$d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/f/b$a;->a:Lg/a/c/a/k$d;

    iput-boolean p2, p0, Lio/flutter/plugins/f/b$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/f/b$a;->a:Lg/a/c/a/k$d;

    iget-boolean v0, p0, Lio/flutter/plugins/f/b$a;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/f/b$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.class Lcom/pichillilorenzo/flutter_inappwebview/h$a;
.super Ljava/lang/Object;
.source "InAppWebViewStatic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/h;->onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/h;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/h$a;->e:Lg/a/c/a/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/h$a;->e:Lg/a/c/a/k$d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

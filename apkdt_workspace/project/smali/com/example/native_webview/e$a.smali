.class Lcom/example/native_webview/e$a;
.super Landroid/content/BroadcastReceiver;
.source "NativeWebviewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/native_webview/e;->a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/d$b;


# direct methods
.method constructor <init>(Lcom/example/native_webview/e;Lg/a/c/a/d$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/example/native_webview/e$a;->a:Lg/a/c/a/d$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/example/native_webview/e$a;->a:Lg/a/c/a/d$b;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    return-void
.end method

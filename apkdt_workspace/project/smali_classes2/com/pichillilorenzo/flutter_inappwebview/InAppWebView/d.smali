.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;
.super Lio/flutter/plugin/platform/g;
.source "FlutterWebViewFactory.java"


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Lg/a/c/a/c;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/c/a/n;->a:Lg/a/c/a/n;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/g;-><init>(Lg/a/c/a/i;)V

    .line 2
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;->b:Landroid/view/View;

    .line 3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;->c:Lg/a/c/a/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;
    .locals 6

    .line 1
    move-object v4, p3

    check-cast v4, Ljava/util/HashMap;

    .line 2
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;->c:Lg/a/c/a/c;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/d;->b:Landroid/view/View;

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;-><init>(Lg/a/c/a/c;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V

    return-object p3
.end method

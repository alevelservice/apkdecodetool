.class public final Lio/flutter/plugins/f/h;
.super Lio/flutter/plugin/platform/g;
.source "WebViewFactory.java"


# instance fields
.field private final b:Lg/a/c/a/c;

.field private final c:Landroid/view/View;


# direct methods
.method constructor <init>(Lg/a/c/a/c;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/c/a/n;->a:Lg/a/c/a/n;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/g;-><init>(Lg/a/c/a/i;)V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/f/h;->b:Lg/a/c/a/c;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/f/h;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;
    .locals 6

    .line 1
    move-object v4, p3

    check-cast v4, Ljava/util/Map;

    .line 2
    new-instance p3, Lio/flutter/plugins/f/c;

    iget-object v2, p0, Lio/flutter/plugins/f/h;->b:Lg/a/c/a/c;

    iget-object v5, p0, Lio/flutter/plugins/f/h;->c:Landroid/view/View;

    move-object v0, p3

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugins/f/c;-><init>(Landroid/content/Context;Lg/a/c/a/c;ILjava/util/Map;Landroid/view/View;)V

    return-object p3
.end method

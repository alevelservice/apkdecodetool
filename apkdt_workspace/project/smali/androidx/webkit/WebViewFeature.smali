.class public Landroidx/webkit/WebViewFeature;
.super Ljava/lang/Object;
.source "WebViewFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewFeature$WebViewSupportFeature;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

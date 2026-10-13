.class Lio/flutter/plugins/f/e$a;
.super Ljava/lang/Object;
.source "InputAwareWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/f/e;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lio/flutter/plugins/f/e;


# direct methods
.method constructor <init>(Lio/flutter/plugins/f/e;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/f/e$a;->f:Lio/flutter/plugins/f/e;

    iput-object p2, p0, Lio/flutter/plugins/f/e$a;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/f/e$a;->f:Lio/flutter/plugins/f/e;

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/f/e$a;->e:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/f/e$a;->f:Lio/flutter/plugins/f/e;

    invoke-static {v1}, Lio/flutter/plugins/f/e;->a(Lio/flutter/plugins/f/e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    return-void
.end method

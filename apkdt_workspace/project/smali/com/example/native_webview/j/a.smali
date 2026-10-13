.class public abstract Lcom/example/native_webview/j/a;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityWebViewBinding.java"


# instance fields
.field public final v:Lcom/example/native_webview/j/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final w:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/example/native_webview/j/i;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/example/native_webview/j/a;->v:Lcom/example/native_webview/j/i;

    .line 3
    iget-object p1, p0, Lcom/example/native_webview/j/a;->v:Lcom/example/native_webview/j/i;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/ViewDataBinding;)V

    .line 4
    iput-object p5, p0, Lcom/example/native_webview/j/a;->w:Landroid/widget/FrameLayout;

    .line 5
    iput-object p6, p0, Lcom/example/native_webview/j/a;->x:Landroid/widget/RelativeLayout;

    return-void
.end method

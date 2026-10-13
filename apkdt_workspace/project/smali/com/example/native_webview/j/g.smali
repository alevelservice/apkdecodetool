.class public abstract Lcom/example/native_webview/j/g;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentWebviewBinding.java"


# instance fields
.field public final v:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final w:Landroid/webkit/WebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/example/native_webview/j/g;->v:Landroidx/cardview/widget/CardView;

    .line 3
    iput-object p5, p0, Lcom/example/native_webview/j/g;->w:Landroid/webkit/WebView;

    return-void
.end method

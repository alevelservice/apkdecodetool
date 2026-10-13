.class public abstract Lcom/example/native_webview/j/i;
.super Landroidx/databinding/ViewDataBinding;
.source "ToolbarBinding.java"


# instance fields
.field public final v:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final w:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/example/native_webview/j/i;->v:Landroid/widget/ImageView;

    .line 3
    iput-object p7, p0, Lcom/example/native_webview/j/i;->w:Landroid/widget/TextView;

    return-void
.end method

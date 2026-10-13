.class Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHoder"
.end annotation


# instance fields
.field content_tv:Landroid/widget/TextView;

.field final synthetic this$0:Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;


# direct methods
.method public constructor <init>(Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;->this$0:Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    .line 92
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 93
    sget p1, Lcom/intercept/sms/R$id;->content_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;->content_tv:Landroid/widget/TextView;

    return-void
.end method

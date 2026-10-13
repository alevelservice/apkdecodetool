.class public Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/xy12/codetransporter/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ltop/xy12/codetransporter/bean/MessageBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public convertTimestampToDate(J)Ljava/lang/String;
    .locals 3

    .line 100
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 102
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;

    invoke-virtual {p0, p1, p2}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->onBindViewHolder(Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;I)V

    return-void
.end method

.method public onBindViewHolder(Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;I)V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    iget-object v1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v1}, Ltop/xy12/codetransporter/bean/MessageBean;->getState()I

    move-result v1

    const-string v2, "["

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->convertTimestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    .line 68
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v2}, Ltop/xy12/codetransporter/bean/MessageBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->convertTimestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 61
    iget-object v2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v2}, Ltop/xy12/codetransporter/bean/MessageBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\u53d1\u4ef6\u4eba\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 62
    iget-object v2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 63
    iget-object v2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v2}, Ltop/xy12/codetransporter/bean/MessageBean;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->convertTimestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\u5185\u5bb9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 64
    iget-object v2, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v2}, Ltop/xy12/codetransporter/bean/MessageBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :goto_0
    iget-object v1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {v1}, Ltop/xy12/codetransporter/bean/MessageBean;->getIsShowLog()I

    move-result v1

    if-nez v1, :cond_2

    .line 75
    iget-object p1, p1, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;->content_tv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p1, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;->content_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \u65e5\u5fd7\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getLogInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;
    .locals 1

    .line 48
    iget-object p1, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->context:Landroid/content/Context;

    sget p2, Lcom/intercept/sms/R$layout;->message_item_layout:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;

    invoke-direct {p2, p0, p1}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter$MyViewHoder;-><init>(Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ltop/xy12/codetransporter/bean/MessageBean;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

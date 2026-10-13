.class public Lcom/zoloz/webcontainer/n/a/g;
.super Lcom/zoloz/webcontainer/n/b;
.source "H5ShowBackPlugin.java"


# instance fields
.field private a:Lcom/zoloz/webcontainer/r/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/webcontainer/n/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "hideShowButton"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/webcontainer/n/a/g;->a:Lcom/zoloz/webcontainer/r/a;

    .line 2
    iget-object p1, p0, Lcom/zoloz/webcontainer/n/a/g;->a:Lcom/zoloz/webcontainer/r/a;

    invoke-interface {p1}, Lcom/zoloz/webcontainer/r/a;->g()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

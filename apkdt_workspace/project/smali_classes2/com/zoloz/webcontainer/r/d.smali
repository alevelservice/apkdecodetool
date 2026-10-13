.class Lcom/zoloz/webcontainer/r/d;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zoloz/webcontainer/r/c;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/r/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/r/d;->a:Lcom/zoloz/webcontainer/r/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/zoloz/webcontainer/r/d;->a:Lcom/zoloz/webcontainer/r/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoloz/webcontainer/r/c;->a(Lcom/zoloz/webcontainer/r/c;Z)Z

    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zoloz/webcontainer/r/d;->a(Ljava/lang/String;)V

    return-void
.end method

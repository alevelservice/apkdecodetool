.class Lh/a/a/a$a;
.super Landroid/content/BroadcastReceiver;
.source "UniLinksPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/a/a/a;->a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/d$b;


# direct methods
.method constructor <init>(Lh/a/a/a;Lg/a/c/a/d$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh/a/a/a$a;->a:Lg/a/c/a/d$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lh/a/a/a$a;->a:Lg/a/c/a/d$b;

    const/4 p2, 0x0

    const-string v0, "UNAVAILABLE"

    const-string v1, "Link unavailable"

    invoke-interface {p1, v0, v1, p2}, Lg/a/c/a/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lh/a/a/a$a;->a:Lg/a/c/a/d$b;

    invoke-interface {p2, p1}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

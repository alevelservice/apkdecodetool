.class public Lh/a/a/a;
.super Ljava/lang/Object;
.source "UniLinksPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lg/a/c/a/d$d;
.implements Lg/a/c/a/m$b;


# instance fields
.field private e:Landroid/content/BroadcastReceiver;

.field private f:Lg/a/c/a/m$d;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lg/a/c/a/m$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/a/a/a;->f:Lg/a/c/a/m$d;

    .line 3
    invoke-interface {p1}, Lg/a/c/a/m$d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lh/a/a/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 15
    new-instance v0, Lh/a/a/a$a;

    invoke-direct {v0, p0, p1}, Lh/a/a/a$a;-><init>(Lh/a/a/a;Lg/a/c/a/d$b;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 3

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object v1, p0, Lh/a/a/a;->g:Ljava/lang/String;

    .line 12
    :cond_0
    iget-object p3, p0, Lh/a/a/a;->e:Landroid/content/BroadcastReceiver;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static a(Lg/a/c/a/m$d;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lh/a/a/a;

    invoke-direct {v0, p0}, Lh/a/a/a;-><init>(Lg/a/c/a/m$d;)V

    .line 3
    new-instance v1, Lg/a/c/a/k;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v2

    const-string v3, "uni_links/messages"

    invoke-direct {v1, v2, v3}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 5
    new-instance v1, Lg/a/c/a/d;

    invoke-interface {p0}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object v2

    const-string v3, "uni_links/events"

    invoke-direct {v1, v2, v3}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    .line 7
    invoke-interface {p0, v0}, Lg/a/c/a/m$d;->a(Lg/a/c/a/m$b;)Lg/a/c/a/m$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lh/a/a/a;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/d$b;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Lh/a/a/a;->a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lh/a/a/a;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const-string v0, "getInitialLink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lh/a/a/a;->g:Ljava/lang/String;

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh/a/a/a;->f:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2}, Lh/a/a/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Boolean;)V

    return v1
.end method

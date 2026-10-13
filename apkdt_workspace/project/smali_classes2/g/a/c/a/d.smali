.class public final Lg/a/c/a/d;
.super Ljava/lang/Object;
.source "EventChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/c/a/d$c;,
        Lg/a/c/a/d$b;,
        Lg/a/c/a/d$d;
    }
.end annotation


# instance fields
.field private final a:Lg/a/c/a/c;

.field private final b:Ljava/lang/String;

.field private final c:Lg/a/c/a/l;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    invoke-direct {p0, p1, p2, v0}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V

    return-void
.end method

.method public constructor <init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/a/c/a/d;->a:Lg/a/c/a/c;

    .line 4
    iput-object p2, p0, Lg/a/c/a/d;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/a/c/a/d;->c:Lg/a/c/a/l;

    return-void
.end method

.method static synthetic a(Lg/a/c/a/d;)Lg/a/c/a/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/d;->c:Lg/a/c/a/l;

    return-object p0
.end method

.method static synthetic b(Lg/a/c/a/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lg/a/c/a/d;)Lg/a/c/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/d;->a:Lg/a/c/a/c;

    return-object p0
.end method


# virtual methods
.method public a(Lg/a/c/a/d$d;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lg/a/c/a/d;->a:Lg/a/c/a/c;

    iget-object v1, p0, Lg/a/c/a/d;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/a/c/a/d$c;

    invoke-direct {v2, p0, p1}, Lg/a/c/a/d$c;-><init>(Lg/a/c/a/d;Lg/a/c/a/d$d;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lg/a/c/a/c;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method

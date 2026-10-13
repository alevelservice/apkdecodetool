.class Le/n/a/c$i;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Lg/a/c/a/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/n/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Lg/a/c/a/k$d;


# direct methods
.method private constructor <init>(Le/n/a/c;Lg/a/c/a/k$d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Le/n/a/c$i;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Le/n/a/c$i;->b:Lg/a/c/a/k$d;

    return-void
.end method

.method synthetic constructor <init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;)V

    return-void
.end method

.method static synthetic a(Le/n/a/c$i;)Lg/a/c/a/k$d;
    .locals 0

    .line 1
    iget-object p0, p0, Le/n/a/c$i;->b:Lg/a/c/a/k$d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Le/n/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Le/n/a/c$i$c;

    invoke-direct {v1, p0}, Le/n/a/c$i$c;-><init>(Le/n/a/c$i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Le/n/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Le/n/a/c$i$a;

    invoke-direct {v1, p0, p1}, Le/n/a/c$i$a;-><init>(Le/n/a/c$i;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Le/n/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Le/n/a/c$i$b;

    invoke-direct {v1, p0, p1, p2, p3}, Le/n/a/c$i$b;-><init>(Le/n/a/c$i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

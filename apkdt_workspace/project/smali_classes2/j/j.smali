.class public Lj/j;
.super Lj/v;
.source "ForwardingTimeout.java"


# instance fields
.field private e:Lj/v;


# direct methods
.method public constructor <init>(Lj/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj/v;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lj/j;->e:Lj/v;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lj/v;)Lj/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lj/j;->e:Lj/v;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lj/v;
    .locals 1

    .line 5
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0}, Lj/v;->a()Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lj/v;
    .locals 1

    .line 4
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0, p1, p2}, Lj/v;->a(J)Lj/v;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lj/v;
    .locals 1

    .line 3
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0, p1, p2, p3}, Lj/v;->a(JLjava/util/concurrent/TimeUnit;)Lj/v;

    move-result-object p1

    return-object p1
.end method

.method public b()Lj/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0}, Lj/v;->b()Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0}, Lj/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0}, Lj/v;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/j;->e:Lj/v;

    invoke-virtual {v0}, Lj/v;->e()V

    return-void
.end method

.method public final g()Lj/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/j;->e:Lj/v;

    return-object v0
.end method

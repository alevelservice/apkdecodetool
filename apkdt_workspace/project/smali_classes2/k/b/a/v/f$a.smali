.class Lk/b/a/v/f$a;
.super Lk/b/a/w/c;
.source "DateTimePrintContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/b/a/v/f;->a(Lk/b/a/x/e;Lk/b/a/v/b;)Lk/b/a/x/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lk/b/a/u/b;

.field final synthetic f:Lk/b/a/x/e;

.field final synthetic g:Lk/b/a/u/i;

.field final synthetic h:Lk/b/a/q;


# direct methods
.method constructor <init>(Lk/b/a/u/b;Lk/b/a/x/e;Lk/b/a/u/i;Lk/b/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    iput-object p2, p0, Lk/b/a/v/f$a;->f:Lk/b/a/x/e;

    iput-object p3, p0, Lk/b/a/v/f$a;->g:Lk/b/a/u/i;

    iput-object p4, p0, Lk/b/a/v/f$a;->h:Lk/b/a/q;

    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Lk/b/a/x/i;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lk/b/a/x/i;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/v/f$a;->f:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lk/b/a/x/i;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    invoke-virtual {v0, p1}, Lk/b/a/u/b;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/v/f$a;->f:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    return p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lk/b/a/v/f$a;->g:Lk/b/a/u/i;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lk/b/a/v/f$a;->h:Lk/b/a/q;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lk/b/a/v/f$a;->f:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lk/b/a/x/i;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/v/f$a;->e:Lk/b/a/u/b;

    invoke-virtual {v0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/v/f$a;->f:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

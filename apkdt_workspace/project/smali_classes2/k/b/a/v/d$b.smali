.class final Lk/b/a/v/d$b;
.super Lk/b/a/w/c;
.source "DateTimeParseContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field e:Lk/b/a/u/i;

.field f:Lk/b/a/q;

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Lk/b/a/m;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lk/b/a/v/d;


# direct methods
.method private constructor <init>(Lk/b/a/v/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk/b/a/v/d$b;->k:Lk/b/a/v/d;

    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lk/b/a/v/d$b;->e:Lk/b/a/u/i;

    .line 4
    iput-object p1, p0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    .line 6
    sget-object p1, Lk/b/a/m;->ZERO:Lk/b/a/m;

    iput-object p1, p0, Lk/b/a/v/d$b;->i:Lk/b/a/m;

    return-void
.end method

.method synthetic constructor <init>(Lk/b/a/v/d;Lk/b/a/v/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/b/a/v/d$b;-><init>(Lk/b/a/v/d;)V

    return-void
.end method


# virtual methods
.method protected a()Lk/b/a/v/d$b;
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/v/d$b;

    iget-object v1, p0, Lk/b/a/v/d$b;->k:Lk/b/a/v/d;

    invoke-direct {v0, v1}, Lk/b/a/v/d$b;-><init>(Lk/b/a/v/d;)V

    .line 2
    iget-object v1, p0, Lk/b/a/v/d$b;->e:Lk/b/a/u/i;

    iput-object v1, v0, Lk/b/a/v/d$b;->e:Lk/b/a/u/i;

    .line 3
    iget-object v1, p0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    iput-object v1, v0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    .line 4
    iget-object v1, v0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    iget-object v2, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    iget-boolean v1, p0, Lk/b/a/v/d$b;->h:Z

    iput-boolean v1, v0, Lk/b/a/v/d$b;->h:Z

    return-object v0
.end method

.method b()Lk/b/a/v/a;
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/v/a;

    invoke-direct {v0}, Lk/b/a/v/a;-><init>()V

    .line 2
    iget-object v1, v0, Lk/b/a/v/a;->e:Ljava/util/Map;

    iget-object v2, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lk/b/a/v/d$b;->k:Lk/b/a/v/d;

    invoke-virtual {v1}, Lk/b/a/v/d;->b()Lk/b/a/u/i;

    move-result-object v1

    iput-object v1, v0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    .line 4
    iget-object v1, p0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, v0, Lk/b/a/v/a;->g:Lk/b/a/q;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lk/b/a/v/d$b;->k:Lk/b/a/v/d;

    invoke-static {v1}, Lk/b/a/v/d;->a(Lk/b/a/v/d;)Lk/b/a/q;

    move-result-object v1

    iput-object v1, v0, Lk/b/a/v/a;->g:Lk/b/a/q;

    .line 7
    :goto_0
    iget-boolean v1, p0, Lk/b/a/v/d$b;->h:Z

    iput-boolean v1, v0, Lk/b/a/v/a;->j:Z

    .line 8
    iget-object v1, p0, Lk/b/a/v/d$b;->i:Lk/b/a/m;

    iput-object v1, v0, Lk/b/a/v/a;->k:Lk/b/a/m;

    return-object v0
.end method

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lk/b/a/w/d;->a(J)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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
    iget-object p1, p0, Lk/b/a/v/d$b;->e:Lk/b/a/u/i;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/b/a/v/d$b;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/v/d$b;->e:Lk/b/a/u/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/d$b;->f:Lk/b/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

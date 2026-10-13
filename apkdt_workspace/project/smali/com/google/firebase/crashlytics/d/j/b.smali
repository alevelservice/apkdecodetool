.class public Lcom/google/firebase/crashlytics/d/j/b;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final f:Li/w;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/j/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Li/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Li/w;

    invoke-direct {v0}, Li/w;-><init>()V

    .line 2
    invoke-virtual {v0}, Li/w;->D()Li/w$b;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/w$b;->a(JLjava/util/concurrent/TimeUnit;)Li/w$b;

    .line 4
    invoke-virtual {v0}, Li/w$b;->a()Li/w;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/j/b;->f:Li/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/d/j/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/j/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/j/b;->a:Lcom/google/firebase/crashlytics/d/j/a;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/j/b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/j/b;->c:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/j/b;->d:Ljava/util/Map;

    return-void
.end method

.method private c()Li/z;
    .locals 5

    .line 1
    new-instance v0, Li/z$a;

    invoke-direct {v0}, Li/z$a;-><init>()V

    new-instance v1, Li/d$a;

    invoke-direct {v1}, Li/d$a;-><init>()V

    .line 2
    invoke-virtual {v1}, Li/d$a;->b()Li/d$a;

    invoke-virtual {v1}, Li/d$a;->a()Li/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/z$a;->a(Li/d;)Li/z$a;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/j/b;->b:Ljava/lang/String;

    invoke-static {v1}, Li/s;->e(Ljava/lang/String;)Li/s;

    move-result-object v1

    invoke-virtual {v1}, Li/s;->i()Li/s$a;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/j/b;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Li/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/s$a;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Li/s$a;->a()Li/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/z$a;->a(Li/s;)Li/z$a;

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/j/b;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Li/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Li/v$a;->a()Li/v;

    move-result-object v1

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/j/b;->a:Lcom/google/firebase/crashlytics/d/j/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    .line 11
    invoke-virtual {v0}, Li/z$a;->a()Li/z;

    move-result-object v0

    return-object v0
.end method

.method private d()Li/v$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/v$a;

    invoke-direct {v0}, Li/v$a;-><init>()V

    sget-object v1, Li/v;->f:Li/u;

    invoke-virtual {v0, v1}, Li/v$a;->a(Li/u;)Li/v$a;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/d/j/b;
    .locals 0

    .line 3
    invoke-static {p3}, Li/u;->b(Ljava/lang/String;)Li/u;

    move-result-object p3

    .line 4
    invoke-static {p3, p4}, Li/a0;->a(Li/u;Ljava/io/File;)Li/a0;

    move-result-object p3

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/j/b;->d()Li/v$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Li/v$a;->a(Ljava/lang/String;Ljava/lang/String;Li/a0;)Li/v$a;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/google/firebase/crashlytics/d/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/d/j/b;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/d/j/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/j/b;

    return-object p0
.end method

.method public a()Lcom/google/firebase/crashlytics/d/j/d;
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/j/b;->c()Li/z;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/firebase/crashlytics/d/j/b;->f:Li/w;

    invoke-virtual {v1, v0}, Li/w;->a(Li/z;)Li/e;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Li/e;->execute()Li/b0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/j/d;->a(Li/b0;)Lcom/google/firebase/crashlytics/d/j/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/j/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/j/b;->d()Li/v$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Li/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/v$a;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->e:Li/v$a;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/b;->a:Lcom/google/firebase/crashlytics/d/j/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

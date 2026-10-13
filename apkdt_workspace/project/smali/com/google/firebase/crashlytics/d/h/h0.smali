.class Lcom/google/firebase/crashlytics/d/h/h0;
.super Ljava/lang/Object;
.source "SessionReportingCoordinator.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/h/o;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/h/p;

.field private final b:Lcom/google/firebase/crashlytics/d/k/g;

.field private final c:Lcom/google/firebase/crashlytics/d/n/c;

.field private final d:Lcom/google/firebase/crashlytics/d/i/b;

.field private final e:Lcom/google/firebase/crashlytics/d/h/j0;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/p;Lcom/google/firebase/crashlytics/d/k/g;Lcom/google/firebase/crashlytics/d/n/c;Lcom/google/firebase/crashlytics/d/i/b;Lcom/google/firebase/crashlytics/d/h/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/h0;->a:Lcom/google/firebase/crashlytics/d/h/p;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/h/h0;->c:Lcom/google/firebase/crashlytics/d/n/c;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/h/h0;->d:Lcom/google/firebase/crashlytics/d/i/b;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/h/h0;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;)I
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/i/b;Lcom/google/firebase/crashlytics/d/h/j0;Lcom/google/firebase/crashlytics/d/p/d;Lcom/google/firebase/crashlytics/d/o/e;)Lcom/google/firebase/crashlytics/d/h/h0;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lcom/google/firebase/crashlytics/d/k/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/p;

    invoke-direct {v2, p0, p1, p3, p6}, Lcom/google/firebase/crashlytics/d/h/p;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/p/d;)V

    .line 3
    new-instance v3, Lcom/google/firebase/crashlytics/d/k/g;

    invoke-direct {v3, v0, p7}, Lcom/google/firebase/crashlytics/d/k/g;-><init>(Ljava/io/File;Lcom/google/firebase/crashlytics/d/o/e;)V

    .line 4
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/n/c;->a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/n/c;

    move-result-object v4

    .line 5
    new-instance p0, Lcom/google/firebase/crashlytics/d/h/h0;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/d/h/h0;-><init>(Lcom/google/firebase/crashlytics/d/h/p;Lcom/google/firebase/crashlytics/d/k/g;Lcom/google/firebase/crashlytics/d/n/c;Lcom/google/firebase/crashlytics/d/i/b;Lcom/google/firebase/crashlytics/d/h/j0;)V

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;->c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/g0;->a()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    .line 39
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/h/h0;->a:Lcom/google/firebase/crashlytics/d/h/p;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    .line 41
    invoke-virtual/range {v2 .. v10}, Lcom/google/firebase/crashlytics/d/h/p;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;->f()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;

    move-result-object v3

    .line 43
    iget-object v4, v0, Lcom/google/firebase/crashlytics/d/h/h0;->d:Lcom/google/firebase/crashlytics/d/i/b;

    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/d/i/b;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 44
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d$a;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d$a;

    invoke-virtual {v5}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d;

    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    const-string v5, "No log data to include with this event."

    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 47
    :goto_0
    iget-object v4, v0, Lcom/google/firebase/crashlytics/d/h/h0;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    .line 48
    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/d/h/j0;->a()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 49
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;->e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;

    move-result-object v2

    .line 52
    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/model/v;->a(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/v;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;->a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;

    .line 53
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;

    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;

    .line 55
    :cond_1
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v2, v3, p3, v1}, Lcom/google/firebase/crashlytics/d/k/g;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/h0;Le/i/b/b/d/h;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Le/i/b/b/d/h;)Z

    move-result p0

    return p0
.end method

.method private a(Le/i/b/b/d/h;)Z
    .locals 3
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/crashlytics/d/h/q;",
            ">;)Z"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/d/h/q;

    .line 58
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/q;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/k/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/h/u;)Le/i/b/b/d/h;
    .locals 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crashlytics/d/h/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/crashlytics/d/h/u;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/u;->NONE:Lcom/google/firebase/crashlytics/d/h/u;

    if-ne p2, v0, :cond_0

    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Send via DataTransport disabled. Removing DataTransport reports."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/k/g;->a()V

    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->b()Ljava/util/List;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/d/h/q;

    .line 30
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/q;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->i()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/google/firebase/crashlytics/d/h/u;->ALL:Lcom/google/firebase/crashlytics/d/h/u;

    if-eq p2, v3, :cond_1

    .line 31
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v3

    const-string v4, "Send native reports via DataTransport disabled. Removing DataTransport reports."

    .line 32
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/k/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/h0;->c:Lcom/google/firebase/crashlytics/d/n/c;

    .line 35
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/n/c;->a(Lcom/google/firebase/crashlytics/d/h/q;)Le/i/b/b/d/h;

    move-result-object v2

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/f0;->a(Lcom/google/firebase/crashlytics/d/h/h0;)Le/i/b/b/d/a;

    move-result-object v3

    .line 36
    invoke-virtual {v2, p1, v3}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v1}, Le/i/b/b/d/k;->a(Ljava/util/Collection;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->a()V

    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/firebase/crashlytics/d/k/g;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/j0;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Could not persist user ID; no user ID available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/crashlytics/d/k/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/h0;->a:Lcom/google/firebase/crashlytics/d/h/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/h/p;->a(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/d/k/g;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/h/c0;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/d/h/c0;

    .line 12
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/h/c0;->c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/h/h0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;->c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/model/v;->a(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;->a(Lcom/google/firebase/crashlytics/internal/model/v;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;

    move-result-object v0

    .line 16
    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/crashlytics/d/k/g;->a(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

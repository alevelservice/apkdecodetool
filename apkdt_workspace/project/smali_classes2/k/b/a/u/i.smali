.class public abstract Lk/b/a/u/i;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/u/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/u/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lk/b/a/u/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lk/b/a/u/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/u/i$a;

    invoke-direct {v0}, Lk/b/a/u/i$a;-><init>()V

    sput-object v0, Lk/b/a/u/i;->FROM:Lk/b/a/x/k;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :try_start_0
    const-class v0, Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getUnicodeLocaleType"

    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Lk/b/a/u/i;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 4

    .line 1
    sget-object v0, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-static {v0}, Lk/b/a/u/i;->a(Lk/b/a/u/i;)V

    .line 3
    sget-object v0, Lk/b/a/u/w;->INSTANCE:Lk/b/a/u/w;

    invoke-static {v0}, Lk/b/a/u/i;->a(Lk/b/a/u/i;)V

    .line 4
    sget-object v0, Lk/b/a/u/s;->INSTANCE:Lk/b/a/u/s;

    invoke-static {v0}, Lk/b/a/u/i;->a(Lk/b/a/u/i;)V

    .line 5
    sget-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    invoke-static {v0}, Lk/b/a/u/i;->a(Lk/b/a/u/i;)V

    .line 6
    sget-object v0, Lk/b/a/u/k;->INSTANCE:Lk/b/a/u/k;

    invoke-static {v0}, Lk/b/a/u/i;->a(Lk/b/a/u/i;)V

    .line 7
    sget-object v0, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lk/b/a/u/k;->INSTANCE:Lk/b/a/u/k;

    const-string v2, "Hijrah"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lk/b/a/u/k;->INSTANCE:Lk/b/a/u/k;

    const-string v2, "islamic"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v0, Lk/b/a/u/i;

    const-class v1, Lk/b/a/u/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/u/i;

    .line 11
    sget-object v2, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lk/b/a/u/i;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v3, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lk/b/a/u/i;)V
    .locals 2

    .line 14
    sget-object v0, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lk/b/a/u/i;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v1, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/u/i;
    .locals 1

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/u/i;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    :goto_0
    return-object p0
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lk/b/a/u/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/u/i;->a()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lk/b/a/u/i;
    .locals 3

    .line 1
    invoke-static {}, Lk/b/a/u/i;->a()V

    .line 2
    sget-object v0, Lk/b/a/u/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofLocale(Ljava/util/Locale;)Lk/b/a/u/i;
    .locals 5

    .line 1
    invoke-static {}, Lk/b/a/u/i;->a()V

    const-string v0, "locale"

    .line 2
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/u/i;->g:Ljava/lang/reflect/Method;

    const-string v1, "iso"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ca"

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lk/b/a/u/p;->LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "japanese"

    goto :goto_0

    :catch_0
    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "iso8601"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lk/b/a/u/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown calendar system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    :goto_1
    sget-object p0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/u/i;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lk/b/a/u/i;->of(Ljava/lang/String;)Lk/b/a/u/i;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/u/i;

    invoke-virtual {p0, p1}, Lk/b/a/u/i;->compareTo(Lk/b/a/u/i;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/u/i;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract date(III)Lk/b/a/u/b;
.end method

.method public date(Lk/b/a/u/j;III)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/i;->prolepticYear(Lk/b/a/u/j;I)I

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lk/b/a/u/i;->date(III)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract date(Lk/b/a/x/e;)Lk/b/a/u/b;
.end method

.method public abstract dateEpochDay(J)Lk/b/a/u/b;
.end method

.method public dateNow()Lk/b/a/u/b;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/u/i;->dateNow(Lk/b/a/a;)Lk/b/a/u/b;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lk/b/a/a;)Lk/b/a/u/b;
    .locals 1

    const-string v0, "clock"

    .line 3
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lk/b/a/f;->now(Lk/b/a/a;)Lk/b/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public dateNow(Lk/b/a/q;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-static {p1}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/u/i;->dateNow(Lk/b/a/a;)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract dateYearDay(II)Lk/b/a/u/b;
.end method

.method public dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/i;->prolepticYear(Lk/b/a/u/j;I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lk/b/a/u/i;->dateYearDay(II)Lk/b/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lk/b/a/u/b;",
            ">(",
            "Lk/b/a/x/d;",
            ")TD;"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/b/a/u/b;

    .line 2
    invoke-virtual {p1}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lk/b/a/u/b;",
            ">(",
            "Lk/b/a/x/d;",
            ")",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/b/a/u/d;

    .line 2
    invoke-virtual {p1}, Lk/b/a/u/d;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lk/b/a/u/d;->toLocalDate()Lk/b/a/u/b;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureChronoZonedDateTime(Lk/b/a/x/d;)Lk/b/a/u/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lk/b/a/u/b;",
            ">(",
            "Lk/b/a/x/d;",
            ")",
            "Lk/b/a/u/h<",
            "TD;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/b/a/u/h;

    .line 2
    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrono mismatch, required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/u/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/u/i;

    invoke-virtual {p0, p1}, Lk/b/a/u/i;->compareTo(Lk/b/a/u/i;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public abstract eraOf(I)Lk/b/a/u/j;
.end method

.method public abstract eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/u/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public getDisplayName(Lk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    invoke-virtual {v0, p1}, Lk/b/a/v/c;->a(Lk/b/a/v/l;)Lk/b/a/v/c;

    invoke-virtual {v0, p2}, Lk/b/a/v/c;->a(Ljava/util/Locale;)Lk/b/a/v/b;

    move-result-object p1

    new-instance p2, Lk/b/a/u/i$b;

    invoke-direct {p2, p0}, Lk/b/a/u/i$b;-><init>(Lk/b/a/u/i;)V

    invoke-virtual {p1, p2}, Lk/b/a/v/b;->a(Lk/b/a/x/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/e;",
            ")",
            "Lk/b/a/u/c<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lk/b/a/h;->from(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/u/b;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object p1
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public period(III)Lk/b/a/u/e;
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/u/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lk/b/a/u/f;-><init>(Lk/b/a/u/i;III)V

    return-object v0
.end method

.method public abstract prolepticYear(Lk/b/a/u/j;I)I
.end method

.method public abstract range(Lk/b/a/x/a;)Lk/b/a/x/n;
.end method

.method public abstract resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/v/i;",
            ")",
            "Lk/b/a/u/b;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/x/a;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state, field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " conflicts with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/i;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/e;",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "*>;"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1, p2}, Lk/b/a/u/h;->ofInstant(Lk/b/a/u/i;Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/h;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lk/b/a/x/e;)Lk/b/a/u/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/e;",
            ")",
            "Lk/b/a/u/g<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lk/b/a/q;->from(Lk/b/a/x/e;)Lk/b/a/q;

    move-result-object v0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lk/b/a/e;->from(Lk/b/a/x/e;)Lk/b/a/e;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1, v0}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p1
    :try_end_1
    .catch Lk/b/a/b; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 4
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v0, v2}, Lk/b/a/u/h;->ofBest(Lk/b/a/u/d;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/u/g;

    move-result-object p1
    :try_end_2
    .catch Lk/b/a/b; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

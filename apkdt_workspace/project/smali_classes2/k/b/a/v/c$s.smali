.class final Lk/b/a/v/c$s;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lk/b/a/v/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
.end annotation


# static fields
.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lk/b/a/v/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/v/c$s$a;

    invoke-direct {v0}, Lk/b/a/v/c$s$a;-><init>()V

    sput-object v0, Lk/b/a/v/c$s;->f:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lk/b/a/v/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textStyle"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lk/b/a/v/l;

    iput-object p1, p0, Lk/b/a/v/c$s;->e:Lk/b/a/v/l;

    return-void
.end method


# virtual methods
.method public parse(Lk/b/a/v/d;Ljava/lang/CharSequence;I)I
    .locals 10

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lk/b/a/v/c$s;->f:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-static {}, Lk/b/a/q;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lk/b/a/v/c$s;->e:Lk/b/a/v/l;

    invoke-virtual {v4}, Lk/b/a/v/l;->asNormal()Lk/b/a/v/l;

    move-result-object v4

    sget-object v5, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_1
    invoke-virtual {p1}, Lk/b/a/v/d;->c()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v7, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Etc/"

    .line 7
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "GMT+"

    if-nez v8, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 8
    :cond_2
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    invoke-virtual {p1}, Lk/b/a/v/d;->c()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    :cond_4
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x0

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lk/b/a/v/d;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lk/b/a/q;->of(Ljava/lang/String;)Lk/b/a/q;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk/b/a/v/d;->a(Lk/b/a/q;)V

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_7
    xor-int/lit8 p1, p3, -0x1

    return p1
.end method

.method public print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/b/a/v/f;->a(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lk/b/a/q;->normalized()Lk/b/a/q;

    move-result-object v2

    instance-of v2, v2, Lk/b/a/r;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lk/b/a/q;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    .line 4
    :cond_1
    invoke-virtual {p1}, Lk/b/a/v/f;->d()Lk/b/a/x/e;

    move-result-object v2

    .line 5
    sget-object v4, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {v2, v4}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    sget-object v4, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {v2, v4}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lk/b/a/e;->ofEpochSecond(J)Lk/b/a/e;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lk/b/a/y/f;->isDaylightSavings(Lk/b/a/e;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lk/b/a/q;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 9
    iget-object v4, p0, Lk/b/a/v/c$s;->e:Lk/b/a/v/l;

    invoke-virtual {v4}, Lk/b/a/v/l;->asNormal()Lk/b/a/v/l;

    move-result-object v4

    sget-object v5, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lk/b/a/v/f;->b()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoneText("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$s;->e:Lk/b/a/v/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

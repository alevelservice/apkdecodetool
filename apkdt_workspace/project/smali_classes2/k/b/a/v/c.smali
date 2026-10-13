.class public final Lk/b/a/v/c;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/a/v/c$f;,
        Lk/b/a/v/c$r;,
        Lk/b/a/v/c$s;,
        Lk/b/a/v/c$l;,
        Lk/b/a/v/c$j;,
        Lk/b/a/v/c$q;,
        Lk/b/a/v/c$i;,
        Lk/b/a/v/c$n;,
        Lk/b/a/v/c$k;,
        Lk/b/a/v/c$p;,
        Lk/b/a/v/c$e;,
        Lk/b/a/v/c$o;,
        Lk/b/a/v/c$m;,
        Lk/b/a/v/c$g;,
        Lk/b/a/v/c$h;
    }
.end annotation


# static fields
.field private static final h:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lk/b/a/x/i;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lk/b/a/v/c;

.field private final b:Lk/b/a/v/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b/a/v/c$h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:I

.field private f:C

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/v/c$a;

    invoke-direct {v0}, Lk/b/a/v/c$a;-><init>()V

    sput-object v0, Lk/b/a/v/c;->h:Lk/b/a/x/k;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    .line 3
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/c;->a:Lk/b/a/x/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/c;->a:Lk/b/a/x/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->AMPM_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->CLOCK_HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->CLOCK_HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->MILLI_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lk/b/a/v/c;->i:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lk/b/a/v/c$c;

    invoke-direct {v0}, Lk/b/a/v/c$c;-><init>()V

    sput-object v0, Lk/b/a/v/c;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/a/v/c;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lk/b/a/v/c;->g:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lk/b/a/v/c;->d:Z

    return-void
.end method

.method private constructor <init>(Lk/b/a/v/c;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/a/v/c;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk/b/a/v/c;->g:I

    .line 11
    iput-object p1, p0, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    .line 12
    iput-boolean p2, p0, Lk/b/a/v/c;->d:Z

    return-void
.end method

.method private a(Lk/b/a/v/c$h;)I
    .locals 3

    const-string v0, "pp"

    .line 49
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget v1, v0, Lk/b/a/v/c;->e:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    .line 51
    new-instance v2, Lk/b/a/v/c$m;

    iget-char v0, v0, Lk/b/a/v/c;->f:C

    invoke-direct {v2, p1, v1, v0}, Lk/b/a/v/c$m;-><init>(Lk/b/a/v/c$h;IC)V

    move-object p1, v2

    .line 52
    :cond_0
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    const/4 v1, 0x0

    iput v1, v0, Lk/b/a/v/c;->e:I

    .line 53
    iput-char v1, v0, Lk/b/a/v/c;->f:C

    .line 54
    :cond_1
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v0, v0, Lk/b/a/v/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    const/4 v0, -0x1

    iput v0, p1, Lk/b/a/v/c;->g:I

    .line 56
    iget-object p1, p1, Lk/b/a/v/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private a(Lk/b/a/v/c$k;)Lk/b/a/v/c;
    .locals 5

    .line 14
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget v1, v0, Lk/b/a/v/c;->g:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lk/b/a/v/c;->c:Ljava/util/List;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lk/b/a/v/c$k;

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget v1, v0, Lk/b/a/v/c;->g:I

    .line 17
    iget-object v0, v0, Lk/b/a/v/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/v/c$k;

    .line 18
    iget v2, p1, Lk/b/a/v/c$k;->f:I

    iget v3, p1, Lk/b/a/v/c$k;->g:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lk/b/a/v/c$k;->h:Lk/b/a/v/j;

    sget-object v4, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    if-ne v2, v4, :cond_0

    .line 19
    invoke-virtual {v0, v3}, Lk/b/a/v/c$k;->a(I)Lk/b/a/v/c$k;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lk/b/a/v/c$k;->a()Lk/b/a/v/c$k;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    .line 21
    iget-object p1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iput v1, p1, Lk/b/a/v/c;->g:I

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lk/b/a/v/c$k;->a()Lk/b/a/v/c$k;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    invoke-direct {p0, p1}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    move-result p1

    iput p1, v2, Lk/b/a/v/c;->g:I

    .line 24
    :goto_0
    iget-object p1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object p1, p1, Lk/b/a/v/c;->c:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    invoke-direct {p0, p1}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    move-result p1

    iput p1, v0, Lk/b/a/v/c;->g:I

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/Locale;)Lk/b/a/v/b;
    .locals 9

    const-string v0, "locale"

    .line 57
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    :goto_0
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v0, v0, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lk/b/a/v/c;->d()Lk/b/a/v/c;

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Lk/b/a/v/c$g;

    iget-object v0, p0, Lk/b/a/v/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lk/b/a/v/c$g;-><init>(Ljava/util/List;Z)V

    .line 61
    new-instance v0, Lk/b/a/v/b;

    sget-object v4, Lk/b/a/v/h;->e:Lk/b/a/v/h;

    sget-object v5, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lk/b/a/v/b;-><init>(Lk/b/a/v/c$g;Ljava/util/Locale;Lk/b/a/v/h;Lk/b/a/v/i;Ljava/util/Set;Lk/b/a/u/i;Lk/b/a/q;)V

    return-object v0
.end method

.method a(Lk/b/a/v/i;)Lk/b/a/v/b;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lk/b/a/v/c;->i()Lk/b/a/v/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/v/b;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Lk/b/a/v/c;
    .locals 2

    .line 37
    new-instance v0, Lk/b/a/v/c$j;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lk/b/a/v/c$j;-><init>(I)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(C)Lk/b/a/v/c;
    .locals 1

    .line 41
    new-instance v0, Lk/b/a/v/c$e;

    invoke-direct {v0, p1}, Lk/b/a/v/c$e;-><init>(C)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lk/b/a/v/c;
    .locals 2

    const-string v0, "literal"

    .line 42
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Lk/b/a/v/c$e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lk/b/a/v/c$e;-><init>(C)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lk/b/a/v/c$p;

    invoke-direct {v0, p1}, Lk/b/a/v/c$p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lk/b/a/v/c;
    .locals 1

    .line 38
    new-instance v0, Lk/b/a/v/c$l;

    invoke-direct {v0, p2, p1}, Lk/b/a/v/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Lk/b/a/v/b;)Lk/b/a/v/c;
    .locals 1

    const-string v0, "formatter"

    .line 47
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Lk/b/a/v/b;->a(Z)Lk/b/a/v/c$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Lk/b/a/v/l;)Lk/b/a/v/c;
    .locals 1

    const-string v0, "textStyle"

    .line 39
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lk/b/a/v/c$f;

    invoke-direct {v0, p1}, Lk/b/a/v/c$f;-><init>(Lk/b/a/v/l;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Lk/b/a/x/i;I)Lk/b/a/v/c;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Lk/b/a/v/c$k;

    sget-object v1, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    invoke-direct {v0, p1, p2, p2, v1}, Lk/b/a/v/c$k;-><init>(Lk/b/a/x/i;IILk/b/a/v/j;)V

    .line 3
    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$k;)Lk/b/a/v/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;
    .locals 2

    if-ne p2, p3, :cond_0

    .line 5
    sget-object v0, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    if-ne p4, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    return-object p0

    :cond_0
    const-string v0, "field"

    .line 7
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    .line 8
    invoke-static {p4, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 9
    new-instance v0, Lk/b/a/v/c$k;

    invoke-direct {v0, p1, p2, p3, p4}, Lk/b/a/v/c$k;-><init>(Lk/b/a/x/i;IILk/b/a/v/j;)V

    .line 10
    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$k;)Lk/b/a/v/c;

    return-object p0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/b/a/x/i;IIZ)Lk/b/a/v/c;
    .locals 1

    .line 26
    new-instance v0, Lk/b/a/v/c$i;

    invoke-direct {v0, p1, p2, p3, p4}, Lk/b/a/v/c$i;-><init>(Lk/b/a/x/i;IIZ)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Lk/b/a/x/i;Ljava/util/Map;)Lk/b/a/v/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lk/b/a/v/c;"
        }
    .end annotation

    const-string v0, "field"

    .line 30
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    .line 31
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 33
    sget-object p2, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 34
    new-instance v0, Lk/b/a/v/k$b;

    invoke-direct {v0, p2}, Lk/b/a/v/k$b;-><init>(Ljava/util/Map;)V

    .line 35
    new-instance p2, Lk/b/a/v/c$b;

    invoke-direct {p2, p0, v0}, Lk/b/a/v/c$b;-><init>(Lk/b/a/v/c;Lk/b/a/v/k$b;)V

    .line 36
    new-instance v0, Lk/b/a/v/c$q;

    sget-object v1, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    invoke-direct {v0, p1, v1, p2}, Lk/b/a/v/c$q;-><init>(Lk/b/a/x/i;Lk/b/a/v/l;Lk/b/a/v/g;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public a(Lk/b/a/x/i;Lk/b/a/v/l;)Lk/b/a/v/c;
    .locals 2

    const-string v0, "field"

    .line 27
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textStyle"

    .line 28
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lk/b/a/v/c$q;

    invoke-static {}, Lk/b/a/v/g;->b()Lk/b/a/v/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lk/b/a/v/c$q;-><init>(Lk/b/a/x/i;Lk/b/a/v/l;Lk/b/a/v/g;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public b()Lk/b/a/v/c;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/c$l;->h:Lk/b/a/v/c$l;

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public b(Lk/b/a/v/l;)Lk/b/a/v/c;
    .locals 1

    .line 2
    new-instance v0, Lk/b/a/v/c$s;

    invoke-direct {v0, p1}, Lk/b/a/v/c$s;-><init>(Lk/b/a/v/l;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public c()Lk/b/a/v/c;
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/v/c$r;

    sget-object v1, Lk/b/a/v/c;->h:Lk/b/a/x/k;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lk/b/a/v/c$r;-><init>(Lk/b/a/x/k;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public d()Lk/b/a/v/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v1, v0, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lk/b/a/v/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lk/b/a/v/c$g;

    iget-object v1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v2, v1, Lk/b/a/v/c;->c:Ljava/util/List;

    iget-boolean v1, v1, Lk/b/a/v/c;->d:Z

    invoke-direct {v0, v2, v1}, Lk/b/a/v/c$g;-><init>(Ljava/util/List;Z)V

    .line 4
    iget-object v1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v1, v1, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    iput-object v1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    .line 5
    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    iget-object v0, v0, Lk/b/a/v/c;->b:Lk/b/a/v/c;

    iput-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    :goto_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lk/b/a/v/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    const/4 v1, -0x1

    iput v1, v0, Lk/b/a/v/c;->g:I

    .line 2
    new-instance v1, Lk/b/a/v/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lk/b/a/v/c;-><init>(Lk/b/a/v/c;Z)V

    iput-object v1, p0, Lk/b/a/v/c;->a:Lk/b/a/v/c;

    return-object p0
.end method

.method public f()Lk/b/a/v/c;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/c$o;->INSENSITIVE:Lk/b/a/v/c$o;

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public g()Lk/b/a/v/c;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/c$o;->SENSITIVE:Lk/b/a/v/c$o;

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public h()Lk/b/a/v/c;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/c$o;->LENIENT:Lk/b/a/v/c$o;

    invoke-direct {p0, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/c$h;)I

    return-object p0
.end method

.method public i()Lk/b/a/v/b;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/v/c;->a(Ljava/util/Locale;)Lk/b/a/v/b;

    move-result-object v0

    return-object v0
.end method

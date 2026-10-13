.class public final Lk/b/a/v/b;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# static fields
.field public static final h:Lk/b/a/v/b;

.field public static final i:Lk/b/a/v/b;

.field public static final j:Lk/b/a/v/b;

.field public static final k:Lk/b/a/v/b;

.field public static final l:Lk/b/a/v/b;

.field public static final m:Lk/b/a/v/b;

.field public static final n:Lk/b/a/v/b;


# instance fields
.field private final a:Lk/b/a/v/c$g;

.field private final b:Ljava/util/Locale;

.field private final c:Lk/b/a/v/h;

.field private final d:Lk/b/a/v/i;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk/b/a/x/i;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lk/b/a/u/i;

.field private final g:Lk/b/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    sget-object v2, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    const/16 v3, 0xa

    const/4 v4, 0x4

    .line 2
    invoke-virtual {v0, v1, v4, v3, v2}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;

    const/16 v1, 0x2d

    .line 3
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    const/4 v5, 0x2

    .line 4
    invoke-virtual {v0, v2, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 5
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v2, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    .line 6
    invoke-virtual {v0, v2, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    sget-object v2, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 7
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v2, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v2}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->h:Lk/b/a/v/b;

    .line 8
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 9
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v2, Lk/b/a/v/b;->h:Lk/b/a/v/b;

    .line 10
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 11
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v2, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 12
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v2, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v2}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 13
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 14
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v2, Lk/b/a/v/b;->h:Lk/b/a/v/b;

    .line 15
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 16
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 17
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v2, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 18
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v2, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v2}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 19
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v2, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    .line 20
    invoke-virtual {v0, v2, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    const/16 v2, 0x3a

    .line 21
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    .line 22
    invoke-virtual {v0, v6, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 23
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 24
    invoke-virtual {v0, v2}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    .line 25
    invoke-virtual {v0, v6, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 26
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x9

    .line 27
    invoke-virtual {v0, v6, v8, v9, v7}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IIZ)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 28
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->i:Lk/b/a/v/b;

    .line 29
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 30
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/b;->i:Lk/b/a/v/b;

    .line 31
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 32
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 33
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->j:Lk/b/a/v/b;

    .line 34
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 35
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/b;->i:Lk/b/a/v/b;

    .line 36
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 37
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 38
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 39
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    .line 40
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 41
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/b;->h:Lk/b/a/v/b;

    .line 42
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    const/16 v6, 0x54

    .line 43
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/b;->i:Lk/b/a/v/b;

    .line 44
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 45
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v6, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v6}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->k:Lk/b/a/v/b;

    .line 46
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 47
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/b;->k:Lk/b/a/v/b;

    .line 48
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 49
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 50
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v6, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v6}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->l:Lk/b/a/v/b;

    .line 51
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v6, Lk/b/a/v/b;->l:Lk/b/a/v/b;

    .line 52
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 53
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    const/16 v6, 0x5b

    .line 54
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    .line 55
    invoke-virtual {v0}, Lk/b/a/v/c;->g()Lk/b/a/v/c;

    .line 56
    invoke-virtual {v0}, Lk/b/a/v/c;->c()Lk/b/a/v/c;

    const/16 v8, 0x5d

    .line 57
    invoke-virtual {v0, v8}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v9, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 58
    invoke-virtual {v0, v9}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v9, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v9}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->m:Lk/b/a/v/b;

    .line 59
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v9, Lk/b/a/v/b;->k:Lk/b/a/v/b;

    .line 60
    invoke-virtual {v0, v9}, Lk/b/a/v/c;->a(Lk/b/a/v/b;)Lk/b/a/v/c;

    .line 61
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 62
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    .line 63
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 64
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    .line 65
    invoke-virtual {v0}, Lk/b/a/v/c;->g()Lk/b/a/v/c;

    .line 66
    invoke-virtual {v0}, Lk/b/a/v/c;->c()Lk/b/a/v/c;

    .line 67
    invoke-virtual {v0, v8}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 68
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v6, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v6}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 69
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 70
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    sget-object v8, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    .line 71
    invoke-virtual {v0, v6, v4, v3, v8}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;

    .line 72
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    const/4 v8, 0x3

    .line 73
    invoke-virtual {v0, v6, v8}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 74
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 75
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 76
    invoke-virtual {v0, v6}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v6, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v6}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 77
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 78
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v6, Lk/b/a/x/c;->c:Lk/b/a/x/i;

    sget-object v8, Lk/b/a/v/j;->EXCEEDS_PAD:Lk/b/a/v/j;

    .line 79
    invoke-virtual {v0, v6, v4, v3, v8}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;

    const-string v3, "-W"

    .line 80
    invoke-virtual {v0, v3}, Lk/b/a/v/c;->a(Ljava/lang/String;)Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/c;->b:Lk/b/a/x/i;

    .line 81
    invoke-virtual {v0, v3, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 82
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    .line 83
    invoke-virtual {v0, v1, v7}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 84
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 85
    invoke-virtual {v0}, Lk/b/a/v/c;->b()Lk/b/a/v/c;

    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 86
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v1}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 87
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 88
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    .line 89
    invoke-virtual {v0}, Lk/b/a/v/c;->a()Lk/b/a/v/c;

    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 90
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sput-object v0, Lk/b/a/v/b;->n:Lk/b/a/v/b;

    .line 91
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    .line 92
    invoke-virtual {v0}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    .line 93
    invoke-virtual {v0, v1, v4}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    .line 94
    invoke-virtual {v0, v1, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    .line 95
    invoke-virtual {v0, v1, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 96
    invoke-virtual {v0}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    const-string v1, "+HHMMss"

    const-string v3, "Z"

    .line 97
    invoke-virtual {v0, v1, v3}, Lk/b/a/v/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/b/a/v/c;

    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    .line 98
    invoke-virtual {v0, v1}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v1}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v8, 0x1

    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Mon"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x2

    .line 101
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "Tue"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x3

    .line 102
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Wed"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x4

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Thu"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x5

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "Fri"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x6

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "Sat"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v11, 0x7

    .line 106
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "Jan"

    .line 108
    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Feb"

    .line 109
    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Mar"

    .line 110
    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Apr"

    .line 111
    invoke-interface {v11, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "May"

    .line 112
    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Jun"

    .line 113
    invoke-interface {v11, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x7

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Jul"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x8

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Aug"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x9

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Sep"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0xa

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Oct"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0xb

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Nov"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0xc

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "Dec"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lk/b/a/v/c;

    invoke-direct {v1}, Lk/b/a/v/c;-><init>()V

    .line 121
    invoke-virtual {v1}, Lk/b/a/v/c;->f()Lk/b/a/v/c;

    .line 122
    invoke-virtual {v1}, Lk/b/a/v/c;->h()Lk/b/a/v/c;

    .line 123
    invoke-virtual {v1}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    .line 124
    invoke-virtual {v1, v3, v0}, Lk/b/a/v/c;->a(Lk/b/a/x/i;Ljava/util/Map;)Lk/b/a/v/c;

    const-string v0, ", "

    .line 125
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(Ljava/lang/String;)Lk/b/a/v/c;

    .line 126
    invoke-virtual {v1}, Lk/b/a/v/c;->d()Lk/b/a/v/c;

    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    sget-object v3, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    .line 127
    invoke-virtual {v1, v0, v7, v5, v3}, Lk/b/a/v/c;->a(Lk/b/a/x/i;IILk/b/a/v/j;)Lk/b/a/v/c;

    const/16 v0, 0x20

    .line 128
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    .line 129
    invoke-virtual {v1, v3, v11}, Lk/b/a/v/c;->a(Lk/b/a/x/i;Ljava/util/Map;)Lk/b/a/v/c;

    .line 130
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    .line 131
    invoke-virtual {v1, v3, v4}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 132
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    .line 133
    invoke-virtual {v1, v3, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 134
    invoke-virtual {v1, v2}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v3, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    .line 135
    invoke-virtual {v1, v3, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 136
    invoke-virtual {v1}, Lk/b/a/v/c;->e()Lk/b/a/v/c;

    .line 137
    invoke-virtual {v1, v2}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    sget-object v2, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    .line 138
    invoke-virtual {v1, v2, v5}, Lk/b/a/v/c;->a(Lk/b/a/x/i;I)Lk/b/a/v/c;

    .line 139
    invoke-virtual {v1}, Lk/b/a/v/c;->d()Lk/b/a/v/c;

    .line 140
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(C)Lk/b/a/v/c;

    const-string v0, "+HHMM"

    const-string v2, "GMT"

    .line 141
    invoke-virtual {v1, v0, v2}, Lk/b/a/v/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/b/a/v/c;

    sget-object v0, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    .line 142
    invoke-virtual {v1, v0}, Lk/b/a/v/c;->a(Lk/b/a/v/i;)Lk/b/a/v/b;

    move-result-object v0

    sget-object v1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, v1}, Lk/b/a/v/b;->a(Lk/b/a/u/i;)Lk/b/a/v/b;

    .line 143
    new-instance v0, Lk/b/a/v/b$a;

    invoke-direct {v0}, Lk/b/a/v/b$a;-><init>()V

    .line 144
    new-instance v0, Lk/b/a/v/b$b;

    invoke-direct {v0}, Lk/b/a/v/b$b;-><init>()V

    return-void
.end method

.method constructor <init>(Lk/b/a/v/c$g;Ljava/util/Locale;Lk/b/a/v/h;Lk/b/a/v/i;Ljava/util/Set;Lk/b/a/u/i;Lk/b/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/v/c$g;",
            "Ljava/util/Locale;",
            "Lk/b/a/v/h;",
            "Lk/b/a/v/i;",
            "Ljava/util/Set<",
            "Lk/b/a/x/i;",
            ">;",
            "Lk/b/a/u/i;",
            "Lk/b/a/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "printerParser"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lk/b/a/v/c$g;

    iput-object p1, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    const-string p1, "locale"

    .line 3
    invoke-static {p2, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/Locale;

    iput-object p2, p0, Lk/b/a/v/b;->b:Ljava/util/Locale;

    const-string p1, "decimalStyle"

    .line 4
    invoke-static {p3, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lk/b/a/v/h;

    iput-object p3, p0, Lk/b/a/v/b;->c:Lk/b/a/v/h;

    const-string p1, "resolverStyle"

    .line 5
    invoke-static {p4, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lk/b/a/v/i;

    iput-object p4, p0, Lk/b/a/v/b;->d:Lk/b/a/v/i;

    .line 6
    iput-object p5, p0, Lk/b/a/v/b;->e:Ljava/util/Set;

    .line 7
    iput-object p6, p0, Lk/b/a/v/b;->f:Lk/b/a/u/i;

    .line 8
    iput-object p7, p0, Lk/b/a/v/b;->g:Lk/b/a/q;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lk/b/a/v/a;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 30
    :goto_0
    invoke-direct {p0, p1, v1}, Lk/b/a/v/b;->b(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lk/b/a/v/d$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p2, v3, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2}, Lk/b/a/v/d$b;->b()Lk/b/a/v/a;

    move-result-object p1

    return-object p1

    .line 33
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v2, 0x40

    if-le p2, v2, :cond_3

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 35
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    :goto_2
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-string v2, "Text \'"

    if-ltz v0, :cond_4

    .line 37
    new-instance v0, Lk/b/a/v/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be parsed at index "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    .line 39
    :cond_4
    new-instance v0, Lk/b/a/v/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lk/b/a/v/e;
    .locals 5

    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    new-instance v2, Lk/b/a/v/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' could not be parsed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1, p2}, Lk/b/a/v/e;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method private b(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lk/b/a/v/d$b;
    .locals 3

    const-string v0, "text"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "position"

    .line 3
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lk/b/a/v/d;

    invoke-direct {v0, p0}, Lk/b/a/v/d;-><init>(Lk/b/a/v/b;)V

    .line 5
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 6
    iget-object v2, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    invoke-virtual {v2, v0, p1, v1}, Lk/b/a/v/c$g;->parse(Lk/b/a/v/d;Ljava/lang/CharSequence;I)I

    move-result p1

    if-gez p1, :cond_0

    xor-int/lit8 p1, p1, -0x1

    .line 7
    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 9
    invoke-virtual {v0}, Lk/b/a/v/d;->i()Lk/b/a/v/d$b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lk/b/a/x/k<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "text"

    .line 19
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "type"

    .line 20
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-direct {p0, p1, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lk/b/a/v/a;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/v/b;->d:Lk/b/a/v/i;

    iget-object v2, p0, Lk/b/a/v/b;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lk/b/a/v/a;->a(Lk/b/a/v/i;Ljava/util/Set;)Lk/b/a/v/a;

    .line 22
    invoke-virtual {v0, p2}, Lk/b/a/v/a;->a(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lk/b/a/v/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 23
    invoke-direct {p0, p1, p2}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lk/b/a/v/e;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 24
    throw p1
.end method

.method public a(Lk/b/a/x/e;)Ljava/lang/String;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lk/b/a/v/b;->a(Lk/b/a/x/e;Ljava/lang/Appendable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lk/b/a/u/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/b;->f:Lk/b/a/u/i;

    return-object v0
.end method

.method public a(Lk/b/a/u/i;)Lk/b/a/v/b;
    .locals 9

    .line 2
    iget-object v0, p0, Lk/b/a/v/b;->f:Lk/b/a/u/i;

    invoke-static {v0, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lk/b/a/v/b;

    iget-object v2, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    iget-object v3, p0, Lk/b/a/v/b;->b:Ljava/util/Locale;

    iget-object v4, p0, Lk/b/a/v/b;->c:Lk/b/a/v/h;

    iget-object v5, p0, Lk/b/a/v/b;->d:Lk/b/a/v/i;

    iget-object v6, p0, Lk/b/a/v/b;->e:Ljava/util/Set;

    iget-object v8, p0, Lk/b/a/v/b;->g:Lk/b/a/q;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lk/b/a/v/b;-><init>(Lk/b/a/v/c$g;Ljava/util/Locale;Lk/b/a/v/h;Lk/b/a/v/i;Ljava/util/Set;Lk/b/a/u/i;Lk/b/a/q;)V

    return-object v0
.end method

.method public a(Lk/b/a/v/i;)Lk/b/a/v/b;
    .locals 9

    const-string v0, "resolverStyle"

    .line 4
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lk/b/a/v/b;->d:Lk/b/a/v/i;

    invoke-static {v0, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lk/b/a/v/b;

    iget-object v2, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    iget-object v3, p0, Lk/b/a/v/b;->b:Ljava/util/Locale;

    iget-object v4, p0, Lk/b/a/v/b;->c:Lk/b/a/v/h;

    iget-object v6, p0, Lk/b/a/v/b;->e:Ljava/util/Set;

    iget-object v7, p0, Lk/b/a/v/b;->f:Lk/b/a/u/i;

    iget-object v8, p0, Lk/b/a/v/b;->g:Lk/b/a/q;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lk/b/a/v/b;-><init>(Lk/b/a/v/c$g;Ljava/util/Locale;Lk/b/a/v/h;Lk/b/a/v/i;Ljava/util/Set;Lk/b/a/u/i;Lk/b/a/q;)V

    return-object v0
.end method

.method a(Z)Lk/b/a/v/c$g;
    .locals 1

    .line 41
    iget-object v0, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    invoke-virtual {v0, p1}, Lk/b/a/v/c$g;->a(Z)Lk/b/a/v/c$g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/x/e;Ljava/lang/Appendable;)V
    .locals 2

    const-string v0, "temporal"

    .line 10
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appendable"

    .line 11
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    :try_start_0
    new-instance v0, Lk/b/a/v/f;

    invoke-direct {v0, p1, p0}, Lk/b/a/v/f;-><init>(Lk/b/a/x/e;Lk/b/a/v/b;)V

    .line 13
    instance-of p1, p2, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, p2}, Lk/b/a/v/c$g;->print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    iget-object v1, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    invoke-virtual {v1, v0, p1}, Lk/b/a/v/c$g;->print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z

    .line 17
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lk/b/a/b;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()Lk/b/a/v/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/b;->c:Lk/b/a/v/h;

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/b;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public d()Lk/b/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/b;->g:Lk/b/a/q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/v/b;->a:Lk/b/a/v/c$g;

    invoke-virtual {v0}, Lk/b/a/v/c$g;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/measurement/w1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/a2;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/a2;)V
    .locals 0
    .param p9    # Lcom/google/android/gms/internal/measurement/a2;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/google/android/gms/internal/measurement/a2<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/w1;->a:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/w1;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/w1;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/w1;)Landroid/net/Uri;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w1;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/w1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w1;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/w1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w1;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p1;->b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p1;->b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p1;->b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p1;->b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p1

    return-object p1
.end method

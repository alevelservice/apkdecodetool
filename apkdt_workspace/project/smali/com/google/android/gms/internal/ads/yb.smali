.class public final Lcom/google/android/gms/internal/ads/yb;
.super Lcom/google/android/gms/internal/ads/c5;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/x2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/c5;-><init>(Lcom/google/android/gms/internal/ads/x2;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yb;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/bu1;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yb;

    new-instance v1, Lcom/google/android/gms/internal/ads/i8;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/i8;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/yb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/x2;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/google/android/gms/internal/ads/bu1;

    new-instance v2, Lcom/google/android/gms/internal/ads/n5;

    const/high16 v3, 0x1400000

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/n5;-><init>(Ljava/io/File;I)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/bu1;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bu1;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/uo1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/uo1;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->c()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->t2:Lcom/google/android/gms/internal/ads/pv1;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yb;->d:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gd;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/e1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yb;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/e1;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e1;->a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/uo1;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Got gmscore asset response: "

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Failed to get gmscore asset response: "

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/c5;->a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/uo1;

    move-result-object p1

    return-object p1
.end method

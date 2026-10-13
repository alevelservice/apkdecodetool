.class public final Lcom/google/android/gms/internal/ads/uu1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaje;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lcom/google/android/gms/ads/j;

.field private final d:Lcom/google/android/gms/internal/ads/lu1;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/st1;

.field private f:Lcom/google/android/gms/ads/b;

.field private g:[Lcom/google/android/gms/ads/d;

.field private h:Lcom/google/android/gms/ads/doubleclick/a;

.field private i:Lcom/google/android/gms/internal/ads/zzve;

.field private j:Lcom/google/android/gms/ads/doubleclick/c;

.field private k:Lcom/google/android/gms/ads/k;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/ViewGroup;

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    sget-object v4, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uu1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uu1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uu1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 6

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uu1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;I)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/uu1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;Lcom/google/android/gms/internal/ads/zzve;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zt1;Lcom/google/android/gms/internal/ads/zzve;I)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p4, Lcom/google/android/gms/internal/ads/zzaje;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzaje;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    .line 11
    new-instance p4, Lcom/google/android/gms/ads/j;

    invoke-direct {p4}, Lcom/google/android/gms/ads/j;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uu1;->c:Lcom/google/android/gms/ads/j;

    .line 12
    new-instance p4, Lcom/google/android/gms/internal/ads/tu1;

    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/tu1;-><init>(Lcom/google/android/gms/internal/ads/uu1;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uu1;->d:Lcom/google/android/gms/internal/ads/lu1;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    const/4 p4, 0x0

    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    .line 15
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uu1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput p6, p0, Lcom/google/android/gms/internal/ads/uu1;->n:I

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 18
    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zztz;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    .line 20
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zztz;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/uu1;->n:I

    .line 23
    sget-object p6, Lcom/google/android/gms/ads/d;->m:Lcom/google/android/gms/ads/d;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/d;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->k()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p3

    goto :goto_0

    .line 25
    :cond_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zztw;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    .line 26
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/uu1;->a(I)Z

    move-result p3

    .line 27
    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zztw;->n:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    .line 28
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p2

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zztw;

    sget-object p6, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    .line 30
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 31
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uu1;)Lcom/google/android/gms/ads/j;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uu1;->c:Lcom/google/android/gms/ads/j;

    return-object p0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zztw;
    .locals 4

    .line 77
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 78
    sget-object v3, Lcom/google/android/gms/ads/d;->m:Lcom/google/android/gms/ads/d;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->k()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    .line 81
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uu1;->a(I)Z

    move-result p0

    .line 82
    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zztw;->n:Z

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->f:Lcom/google/android/gms/ads/b;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->d:Lcom/google/android/gms/internal/ads/lu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/lu1;->a(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/a;)V
    .locals 2

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 53
    new-instance v1, Lcom/google/android/gms/internal/ads/zzty;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzty;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzvm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 55
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/c;)V
    .locals 2

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->j:Lcom/google/android/gms/ads/doubleclick/c;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzzn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 61
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/k;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->k:Lcom/google/android/gms/ads/k;

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzyc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(Lcom/google/android/gms/ads/k;)V

    move-object p1, v1

    .line 70
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 71
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/st1;)V
    .locals 2

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->e:Lcom/google/android/gms/internal/ads/st1;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/st1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzuq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 43
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/su1;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-nez v1, :cond_9

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v1, :cond_8

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/internal/ads/uu1;->n:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uu1;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v5

    const-string v2, "search_v2"

    .line 9
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->b()Lcom/google/android/gms/internal/ads/eu1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    .line 11
    new-instance v4, Lcom/google/android/gms/internal/ads/hu1;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/hu1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->b()Lcom/google/android/gms/internal/ads/eu1;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/uu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    .line 15
    new-instance v9, Lcom/google/android/gms/internal/ads/du1;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/du1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)V

    .line 16
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/ku1;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    .line 18
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->d:Lcom/google/android/gms/internal/ads/lu1;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzur;)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->e:Lcom/google/android/gms/internal/ads/st1;

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->e:Lcom/google/android/gms/internal/ads/st1;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/st1;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzuq;)V

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v1, :cond_4

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzty;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzty;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzvm;)V

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->j:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->j:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzzn;)V

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->k:Lcom/google/android/gms/ads/k;

    if-eqz v1, :cond_6

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uu1;->k:Lcom/google/android/gms/ads/k;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(Lcom/google/android/gms/ads/k;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzyc;)V

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/uu1;->o:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzve;->zzjm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 30
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 32
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zt1;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/su1;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zztp;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->a:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/su1;->m()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaje;->zzf(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    return-void

    :catch_1
    move-exception p1

    .line 35
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uu1;->o:Z

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uu1;->o:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzve;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 65
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uu1;->b([Lcom/google/android/gms/ads/d;)V

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzve;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzve;->zzjm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    .line 73
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    return v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    .line 76
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final b()Lcom/google/android/gms/ads/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->f:Lcom/google/android/gms/ads/b;

    return-object v0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/d;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/internal/ads/uu1;->n:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uu1;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zztw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uu1;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/d;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->zzjo()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/r;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()[Lcom/google/android/gms/ads/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->g:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/doubleclick/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->h:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->zzjp()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/doubleclick/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->j:Lcom/google/android/gms/ads/doubleclick/c;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->c:Lcom/google/android/gms/ads/j;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->k:Lcom/google/android/gms/ads/k;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->zzjn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uu1;->i:Lcom/google/android/gms/internal/ads/zzve;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzve;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

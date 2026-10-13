.class public final Lcom/google/android/gms/internal/ads/x10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field public static final h:Lcom/google/android/gms/internal/ads/x10;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzabt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzabs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/zzacf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/zzace;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/zzafp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzabz;",
            ">;"
        }
    .end annotation
.end field

.field private final g:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaby;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/z10;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/z10;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z10;->a()Lcom/google/android/gms/internal/ads/x10;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/x10;->h:Lcom/google/android/gms/internal/ads/x10;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/z10;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/z10;->a:Lcom/google/android/gms/internal/ads/zzabt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->a:Lcom/google/android/gms/internal/ads/zzabt;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/z10;->b:Lcom/google/android/gms/internal/ads/zzabs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->b:Lcom/google/android/gms/internal/ads/zzabs;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/z10;->c:Lcom/google/android/gms/internal/ads/zzacf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->c:Lcom/google/android/gms/internal/ads/zzacf;

    .line 5
    new-instance v0, La/e/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/z10;->f:La/e/g;

    invoke-direct {v0, v1}, La/e/g;-><init>(La/e/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    .line 6
    new-instance v0, La/e/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/z10;->g:La/e/g;

    invoke-direct {v0, v1}, La/e/g;-><init>(La/e/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->g:La/e/g;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/z10;->d:Lcom/google/android/gms/internal/ads/zzace;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->d:Lcom/google/android/gms/internal/ads/zzace;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/z10;->e:Lcom/google/android/gms/internal/ads/zzafp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x10;->e:Lcom/google/android/gms/internal/ads/zzafp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/z10;Lcom/google/android/gms/internal/ads/w10;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/x10;-><init>(Lcom/google/android/gms/internal/ads/z10;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzabt;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->a:Lcom/google/android/gms/internal/ads/zzabt;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzabz;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    invoke-virtual {v0, p1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabz;

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzabs;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->b:Lcom/google/android/gms/internal/ads/zzabs;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaby;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->g:La/e/g;

    invoke-virtual {v0, p1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaby;

    return-object p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzacf;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->c:Lcom/google/android/gms/internal/ads/zzacf;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzace;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->d:Lcom/google/android/gms/internal/ads/zzace;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzafp;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->e:Lcom/google/android/gms/internal/ads/zzafp;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->c:Lcom/google/android/gms/internal/ads/zzacf;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->a:Lcom/google/android/gms/internal/ads/zzabt;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->b:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    invoke-virtual {v1}, La/e/g;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->e:Lcom/google/android/gms/internal/ads/zzafp;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    invoke-virtual {v1}, La/e/g;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    invoke-virtual {v2}, La/e/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x10;->f:La/e/g;

    invoke-virtual {v2, v1}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

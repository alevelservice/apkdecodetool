.class public Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
.super Ljava/lang/Object;
.source "LocationComponentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/lang/Float;

.field private B:Ljava/lang/Float;

.field private C:Landroid/graphics/RectF;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/Float;

.field private G:Ljava/lang/Boolean;

.field private H:Ljava/lang/Boolean;

.field private I:Ljava/lang/Boolean;

.field private J:Ljava/lang/Boolean;

.field private K:I

.field private L:F

.field private M:F

.field private N:F

.field private O:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private a:Ljava/lang/Float;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Float;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/lang/Long;

.field private w:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Ljava/lang/Float;

.field private y:Ljava/lang/Float;

.field private z:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a:Ljava/lang/Float;

    .line 5
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->i:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->j:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->k:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->l:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->m:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->n:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->l()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->o:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->u()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->p:Ljava/lang/Integer;

    .line 20
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->q:Ljava/lang/Integer;

    .line 21
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->t()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->r:Ljava/lang/Integer;

    .line 22
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->h()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->s:Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->t:Ljava/lang/Float;

    .line 24
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->u:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->v:Ljava/lang/Long;

    .line 26
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->B()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->w:[I

    .line 27
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->x:Ljava/lang/Float;

    .line 28
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->A()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->y:Ljava/lang/Float;

    .line 29
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->z:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->A:Ljava/lang/Float;

    .line 31
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->B:Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->C:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->D:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->E:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->L()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->F:Ljava/lang/Float;

    .line 36
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->G:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->H:Ljava/lang/Boolean;

    .line 38
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->f(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->I:Ljava/lang/Boolean;

    .line 39
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->g(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->J:Ljava/lang/Boolean;

    .line 40
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->K:I

    .line 41
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->L:F

    .line 42
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->M:F

    .line 43
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->N:F

    .line 44
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->e(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->O:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->L:F

    return p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->G:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->M:F

    return p1
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->H:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->N:F

    return p1
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->I:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->J:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public a(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public a(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(J)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->v:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->D:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->u:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a([I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->w:[I

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null padding"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 46
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 11
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a:Ljava/lang/Float;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accuracyAlpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accuracyColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " backgroundDrawableStale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " foregroundDrawableStale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gpsDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_4
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->i:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " foregroundDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_5
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->k:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " backgroundDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_6
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->m:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bearingDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_7
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->t:Ljava/lang/Float;

    if-nez v1, :cond_8

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " elevation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_8
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->u:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enableStaleState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    :cond_9
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->v:Ljava/lang/Long;

    if-nez v1, :cond_a

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " staleStateTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_a
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->w:[I

    if-nez v1, :cond_b

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " padding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    :cond_b
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->x:Ljava/lang/Float;

    if-nez v1, :cond_c

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxZoomIconScale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_c
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->y:Ljava/lang/Float;

    if-nez v1, :cond_d

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " minZoomIconScale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_d
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->z:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trackingGesturesManagement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_e
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->A:Ljava/lang/Float;

    if-nez v1, :cond_f

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trackingInitialMoveThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    :cond_f
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->B:Ljava/lang/Float;

    if-nez v1, :cond_10

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trackingMultiFingerMoveThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    :cond_10
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->F:Ljava/lang/Float;

    if-nez v1, :cond_11

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trackingAnimationDurationMultiplier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    new-instance v1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-object v3, v1

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a:Ljava/lang/Float;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e:Ljava/lang/Integer;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->f:Ljava/lang/String;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g:Ljava/lang/Integer;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->h:Ljava/lang/String;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->i:Ljava/lang/Integer;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->j:Ljava/lang/String;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->k:Ljava/lang/Integer;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->m:Ljava/lang/Integer;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->n:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->o:Ljava/lang/Integer;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->p:Ljava/lang/Integer;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->q:Ljava/lang/Integer;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->r:Ljava/lang/Integer;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->s:Ljava/lang/Integer;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->t:Ljava/lang/Float;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v23

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->u:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->v:Ljava/lang/Long;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->w:[I

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->x:Ljava/lang/Float;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v28

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->y:Ljava/lang/Float;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v29

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->z:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->A:Ljava/lang/Float;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v31

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->B:Ljava/lang/Float;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v32

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->C:Landroid/graphics/RectF;

    move-object/from16 v33, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->D:Ljava/lang/String;

    move-object/from16 v34, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->E:Ljava/lang/String;

    move-object/from16 v35, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->F:Ljava/lang/Float;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v36

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->G:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->H:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->I:Ljava/lang/Boolean;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->J:Ljava/lang/Boolean;

    move-object/from16 v40, v2

    iget v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->K:I

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    iget v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->L:F

    move/from16 v42, v2

    iget v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->M:F

    move/from16 v43, v2

    iget v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->N:F

    move/from16 v44, v2

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->O:Landroid/view/animation/Interpolator;

    move-object/from16 v45, v2

    invoke-direct/range {v3 .. v45}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;-><init>(FIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;FZJ[IFFZFFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;FZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;FFFLandroid/view/animation/Interpolator;)V

    return-object v1

    .line 69
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->t:Ljava/lang/Float;

    return-object p0
.end method

.method public b(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->E:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->z:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->a()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_b

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->y()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set both layerAbove and layerBelow options. Choose one or the other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->E()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""

    .line 9
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseFadeEnabled"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->D()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseColor"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->I()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseSingleDuration"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->H()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_5

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseMaxRadius"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C()F

    move-result v4

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_6

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->C()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseAlpha"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->G()Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pulseInterpolator"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You\'ve set up the following pulsing circle options but have not enabled the pulsing circle via the LocationComponentOptions builder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Enable the pulsing circle if you\'re going to set pulsing options."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    return-object v0

    .line 23
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shadow size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ". Must be >= 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Accuracy alpha value must be between 0.0 and 1.0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public c(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->y:Ljava/lang/Float;

    return-object p0
.end method

.method public d(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->F:Ljava/lang/Float;

    return-object p0
.end method

.method public e(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public f(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->B:Ljava/lang/Float;

    return-object p0
.end method

.method public g(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public h(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->K:I

    return-object p0
.end method

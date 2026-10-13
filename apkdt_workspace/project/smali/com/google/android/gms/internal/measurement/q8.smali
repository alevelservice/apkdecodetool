.class public final Lcom/google/android/gms/internal/measurement/q8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/f2<",
        "Lcom/google/android/gms/internal/measurement/t8;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Lcom/google/android/gms/internal/measurement/q8;


# instance fields
.field private final e:Lcom/google/android/gms/internal/measurement/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/f2<",
            "Lcom/google/android/gms/internal/measurement/t8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/s8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/s8;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/f2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/q8;-><init>(Lcom/google/android/gms/internal/measurement/f2;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/f2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/f2<",
            "Lcom/google/android/gms/internal/measurement/t8;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/e2;->a(Lcom/google/android/gms/internal/measurement/f2;)Lcom/google/android/gms/internal/measurement/f2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q8;->e:Lcom/google/android/gms/internal/measurement/f2;

    return-void
.end method

.method public static A()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static B()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static C()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public static D()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public static E()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzyr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static F()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzys()J

    move-result-wide v0

    return-wide v0
.end method

.method public static G()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzyt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static H()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzyu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static I()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzyv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static J()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzyw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->zzxs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public static k()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public static l()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public static n()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public static p()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public static q()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public static u()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public static v()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public static x()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static y()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static z()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/q8;->f:Lcom/google/android/gms/internal/measurement/q8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/t8;->i()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q8;->e:Lcom/google/android/gms/internal/measurement/f2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t8;

    return-object v0
.end method

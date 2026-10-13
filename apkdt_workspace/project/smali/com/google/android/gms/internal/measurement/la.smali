.class public final Lcom/google/android/gms/internal/measurement/la;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/f2<",
        "Lcom/google/android/gms/internal/measurement/ka;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Lcom/google/android/gms/internal/measurement/la;


# instance fields
.field private final e:Lcom/google/android/gms/internal/measurement/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/f2<",
            "Lcom/google/android/gms/internal/measurement/ka;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/la;->f:Lcom/google/android/gms/internal/measurement/la;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/na;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/f2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/la;-><init>(Lcom/google/android/gms/internal/measurement/f2;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/f2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/f2<",
            "Lcom/google/android/gms/internal/measurement/ka;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/e2;->a(Lcom/google/android/gms/internal/measurement/f2;)Lcom/google/android/gms/internal/measurement/f2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/la;->e:Lcom/google/android/gms/internal/measurement/f2;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/la;->f:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/la;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ka;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/la;->e:Lcom/google/android/gms/internal/measurement/f2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/f2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ka;

    return-object v0
.end method

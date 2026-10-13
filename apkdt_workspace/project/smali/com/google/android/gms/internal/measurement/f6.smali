.class final Lcom/google/android/gms/internal/measurement/f6;
.super Lcom/google/android/gms/internal/measurement/l6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/l6;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/internal/measurement/e6;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/e6;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/f6;->f:Lcom/google/android/gms/internal/measurement/e6;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/l6;-><init>(Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/d6;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/d6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/f6;-><init>(Lcom/google/android/gms/internal/measurement/e6;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/g6;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f6;->f:Lcom/google/android/gms/internal/measurement/e6;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/g6;-><init>(Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/d6;)V

    return-object v0
.end method

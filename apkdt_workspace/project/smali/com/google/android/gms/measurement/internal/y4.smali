.class final Lcom/google/android/gms/measurement/internal/y4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzai;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcom/google/android/gms/measurement/internal/zzfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y4;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y4;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfk;)Lcom/google/android/gms/measurement/internal/g8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->m()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfk;)Lcom/google/android/gms/measurement/internal/g8;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->j()Lcom/google/android/gms/measurement/internal/o6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y4;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y4;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o6;->a(Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)[B

    const/4 v0, 0x0

    throw v0
.end method

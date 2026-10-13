.class final Lcom/google/android/gms/measurement/internal/w4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzai;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic g:Lcom/google/android/gms/measurement/internal/zzfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w4;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w4;->f:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w4;->e:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w4;->f:Lcom/google/android/gms/measurement/internal/zzn;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfk;)Lcom/google/android/gms/measurement/internal/g8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g8;->m()V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w4;->g:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfk;)Lcom/google/android/gms/measurement/internal/g8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w4;->f:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method

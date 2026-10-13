.class final Lcom/google/android/gms/measurement/internal/z7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/measurement/zzp;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/zzai;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzp;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->e:Lcom/google/android/gms/internal/measurement/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->f:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/z7;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zzj:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->e:Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->f:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/internal/measurement/zzp;Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V

    return-void
.end method

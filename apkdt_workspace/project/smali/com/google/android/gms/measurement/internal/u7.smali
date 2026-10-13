.class final synthetic Lcom/google/android/gms/measurement/internal/u7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/measurement/internal/s7;

.field private final f:Lcom/google/android/gms/measurement/internal/f3;

.field private final g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/s7;Lcom/google/android/gms/measurement/internal/f3;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u7;->e:Lcom/google/android/gms/measurement/internal/s7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u7;->f:Lcom/google/android/gms/measurement/internal/f3;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u7;->e:Lcom/google/android/gms/measurement/internal/s7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->f:Lcom/google/android/gms/measurement/internal/f3;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/s7;->a(Lcom/google/android/gms/measurement/internal/f3;Landroid/app/job/JobParameters;)V

    return-void
.end method

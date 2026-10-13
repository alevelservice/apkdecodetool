.class public abstract Lcom/google/android/gms/internal/vision/s4$d;
.super Lcom/google/android/gms/internal/vision/s4;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/f6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/s4$d<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/s4<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/vision/f6;"
    }
.end annotation


# instance fields
.field protected zzwk:Lcom/google/android/gms/internal/vision/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/i4<",
            "Lcom/google/android/gms/internal/vision/s4$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/s4;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/i4;->g()Lcom/google/android/gms/internal/vision/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    return-void
.end method


# virtual methods
.method final m()Lcom/google/android/gms/internal/vision/i4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/i4<",
            "Lcom/google/android/gms/internal/vision/s4$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/i4;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$d;->zzwk:Lcom/google/android/gms/internal/vision/i4;

    return-object v0
.end method

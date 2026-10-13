.class public Lcom/google/android/gms/vision/a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/vision/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/b<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/vision/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/vision/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/a;-><init>(Lcom/google/android/gms/vision/d;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/vision/a$a;->a:Lcom/google/android/gms/vision/b;

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {p2, p1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;Landroid/content/Context;)Landroid/content/Context;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No detector supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(F)Lcom/google/android/gms/vision/a$a;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;F)F

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid fps: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Lcom/google/android/gms/vision/a$a;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid camera: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/a;->c(Lcom/google/android/gms/vision/a;I)I

    return-object p0
.end method

.method public a(II)Lcom/google/android/gms/vision/a$a;
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xf4240

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;I)I

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {p1, p2}, Lcom/google/android/gms/vision/a;->b(Lcom/google/android/gms/vision/a;I)I

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid preview size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)Lcom/google/android/gms/vision/a$a;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;Z)Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/vision/a;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    new-instance v1, Lcom/google/android/gms/vision/a$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/vision/a$a;->a:Lcom/google/android/gms/vision/b;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/vision/a$c;-><init>(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/b;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/a$c;)Lcom/google/android/gms/vision/a$c;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/vision/a$a;->b:Lcom/google/android/gms/vision/a;

    return-object v0
.end method

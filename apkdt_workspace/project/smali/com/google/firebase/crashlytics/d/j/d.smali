.class public Lcom/google/firebase/crashlytics/d/j/d;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Li/r;


# direct methods
.method constructor <init>(ILjava/lang/String;Li/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/firebase/crashlytics/d/j/d;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/j/d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/j/d;->c:Li/r;

    return-void
.end method

.method static a(Li/b0;)Lcom/google/firebase/crashlytics/d/j/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Li/b0;->i()Li/c0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li/b0;->i()Li/c0;

    move-result-object v0

    invoke-virtual {v0}, Li/c0;->m()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/firebase/crashlytics/d/j/d;

    invoke-virtual {p0}, Li/b0;->k()I

    move-result v2

    invoke-virtual {p0}, Li/b0;->m()Li/r;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lcom/google/firebase/crashlytics/d/j/d;-><init>(ILjava/lang/String;Li/r;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/j/d;->c:Li/r;

    invoke-virtual {v0, p1}, Li/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/d/j/d;->a:I

    return v0
.end method

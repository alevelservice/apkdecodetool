.class Lcom/google/firebase/crashlytics/d/h/k$j;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/h/k$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/l/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/d/h/k$j;->c:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

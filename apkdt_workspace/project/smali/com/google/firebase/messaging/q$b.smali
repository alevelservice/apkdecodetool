.class final Lcom/google/firebase/messaging/q$b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/messaging/q;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/q;)V
    .locals 0
    .param p1    # Lcom/google/firebase/messaging/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/messaging/q;

    iput-object p1, p0, Lcom/google/firebase/messaging/q$b;->a:Lcom/google/firebase/messaging/q;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/messaging/q;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/q$b;->a:Lcom/google/firebase/messaging/q;

    return-object v0
.end method

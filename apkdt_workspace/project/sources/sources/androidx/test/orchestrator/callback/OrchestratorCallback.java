package androidx.test.orchestrator.callback;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.test.runner.internal.deps.aidl.BaseProxy;
import androidx.test.runner.internal.deps.aidl.BaseStub;
import androidx.test.runner.internal.deps.aidl.Codecs;

/* loaded from: classes.dex */
public interface OrchestratorCallback extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends BaseStub implements OrchestratorCallback {
        static final int TRANSACTION_addTest = 1;
        static final int TRANSACTION_sendTestNotification = 2;

        /* loaded from: classes.dex */
        public static class Proxy extends BaseProxy implements OrchestratorCallback {
            Proxy(IBinder iBinder) {
                super(iBinder, "androidx.test.orchestrator.callback.OrchestratorCallback");
            }

            @Override // androidx.test.orchestrator.callback.OrchestratorCallback
            public void addTest(String str) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                obtainAndWriteInterfaceToken.writeString(str);
                transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
            }

            @Override // androidx.test.orchestrator.callback.OrchestratorCallback
            public void sendTestNotification(Bundle bundle) {
                Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                Codecs.a(obtainAndWriteInterfaceToken, bundle);
                transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken);
            }
        }

        public Stub() {
            super("androidx.test.orchestrator.callback.OrchestratorCallback");
        }

        public static OrchestratorCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.test.orchestrator.callback.OrchestratorCallback");
            if (queryLocalInterface instanceof OrchestratorCallback) {
                return (OrchestratorCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // androidx.test.runner.internal.deps.aidl.BaseStub
        protected boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                addTest(parcel.readString());
            } else {
                if (i2 != 2) {
                    return false;
                }
                sendTestNotification((Bundle) Codecs.a(parcel, Bundle.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void addTest(String str);

    void sendTestNotification(Bundle bundle);
}
